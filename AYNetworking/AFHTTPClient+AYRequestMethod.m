//
//  AFHTTPClient+AYRequestMethod.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethod.h"
#import "AFJSONRequestOperation.h"
#import <objc/runtime.h>

static void *AFHTTPClientRequestOperationBlockAssociatedObjectKey;
static void *AFHTTPClientRequestBlockAssociatedObjectKey;
static void *AFHTTPClientAsyncBlockIsRunAssociatedObjectKey;

@interface AFHTTPClient (AYHidden)
@property (strong) void(^startRequestOperationBlock) (AFHTTPRequestOperation *);
@property (strong) void(^startRequestBlock) (NSMutableURLRequest *);
@property (assign) BOOL isAsyncRequestResponse;
@end

@implementation AFHTTPClient (AYHidden)

@dynamic startRequestOperationBlock;
@dynamic startRequestBlock;
@dynamic isAsyncRequestResponse;

- (void)setIsAsyncRequestResponse:(BOOL)isAsyncRequestResponse
{
    NSNumber *boolNumber = [NSNumber numberWithBool: isAsyncRequestResponse];
    objc_setAssociatedObject(self, &AFHTTPClientAsyncBlockIsRunAssociatedObjectKey, boolNumber, OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isAsyncRequestResponse
{
    NSNumber *boolNumber = (NSNumber *)objc_getAssociatedObject(self, &AFHTTPClientAsyncBlockIsRunAssociatedObjectKey);
    return [boolNumber boolValue];
}

- (void)setStartRequestOperationBlock:(void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientRequestOperationBlockAssociatedObjectKey, startRequestOperationBlock, OBJC_ASSOCIATION_ASSIGN);
}

- (void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    return (void (^)(AFHTTPRequestOperation *))objc_getAssociatedObject(self, &AFHTTPClientRequestOperationBlockAssociatedObjectKey);
}

-(void)setStartRequestBlock:(void (^)(NSMutableURLRequest *))startRequestBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientRequestBlockAssociatedObjectKey, startRequestBlock, OBJC_ASSOCIATION_RETAIN);
}

- (void (^)(NSMutableURLRequest *))startRequestBlock
{
    return (void (^)(NSMutableURLRequest *))objc_getAssociatedObject(self, &AFHTTPClientRequestBlockAssociatedObjectKey);
}

@end

static void *AFHTTPClientDelegateAssociatedObjectKey;

@implementation AFHTTPClient (AYRequestMethod)

@dynamic delegate;

- (void)setDelegate:(id<AYHTTPClientDelegate>)delegate
{
    objc_setAssociatedObject(self, &AFHTTPClientDelegateAssociatedObjectKey, delegate, OBJC_ASSOCIATION_RETAIN);
}

- (id<AYHTTPClientDelegate>)delegate
{
    return (id<AYHTTPClientDelegate>)objc_getAssociatedObject(self, &AFHTTPClientDelegateAssociatedObjectKey);
}

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                                      success:(void (^)(AFHTTPRequestOperation *, id))success
                                      failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    NSMutableURLRequest *request = [self requestWithMethod:method path:resource parameters:parameters];
    
    [request setAllHTTPHeaderFields:headers];
    
    if (timeout > 0) {
        [request setTimeoutInterval:timeout];
    }
    
    if (self.startRequestBlock) {
        self.startRequestBlock(request);
    }
    
    if ([self.delegate respondsToSelector:@selector(client:willStartWithRequest:)]) {
        [self.delegate client:self willStartWithRequest:request];
    }
    
    AFHTTPRequestOperation *requestOperation = [self HTTPRequestOperationWithRequest:request success:success failure:failure];
    
    if (self.startRequestOperationBlock) {
        self.startRequestOperationBlock(requestOperation);
    }
    
    if ([self.delegate respondsToSelector:@selector(client:willStartRequestOperation:)]) {
        [self.delegate client:self willStartRequestOperation:requestOperation];
    }
    
    [requestOperation start];
    
    return requestOperation;
}

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:method resource:resource parameters:parameters headers:headers timeout:timeout
                           success:^(AFHTTPRequestOperation *operation, id response) {
                               [delegate client:self requestOperation:operation didSuccessfulWithObject:response];
                           }
                           failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                               [delegate client:self requestOperation:operation didFailWithError:error];
                           }
            ];
}

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    
    AFHTTPRequestOperation *operation;
    
    operation = [self requestWithMethod:method resource:resource parameters:parameters headers:headers timeout:timeout
                                success:^(AFHTTPRequestOperation *operation, id response) {
                                    SEL setResponseObject = @selector(setResponseObject:);
                                    if ([operation respondsToSelector:setResponseObject]) {
                                        #pragma clang diagnostic push
                                        #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                                        [operation performSelector:setResponseObject withObject:response];
                                        #pragma clang diagnostic pop
                                    } // seems to send to self
                                    self.isAsyncRequestResponse = YES;
                                }
                                failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                    self.isAsyncRequestResponse = YES;
                                }
                 ];
    [operation waitUntilFinished];
    
    // wait until for the success or failure block is run!
    while (!self.isAsyncRequestResponse) {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        if (operation.response) {
            self.isAsyncRequestResponse = YES;
        }
    }
    return operation;
}

- (void)willStartRequest:(void (^)(NSMutableURLRequest *))block
{
    self.startRequestBlock = block;
}

- (void)willStartRequestOperation:(void (^)(AFHTTPRequestOperation *))block
{
    self.startRequestOperationBlock = block;
}

@end
