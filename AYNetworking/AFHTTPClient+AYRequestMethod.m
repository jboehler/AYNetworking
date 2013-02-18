//
//  AFHTTPClient+AYRequestMethod.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethod.h"
#import <objc/runtime.h>

static void *AFHTTPClientRequestOperationBlockAssociatedObjectKey;
static void *AFHTTPClientRequestBlockAssociatedObjectKey;

@interface AFHTTPClient (hidden)
@property (strong) void(^startRequestOperationBlock) (AFHTTPRequestOperation *);
@property (strong) void(^startRequestBlock) (NSMutableURLRequest *);
@end

@implementation AFHTTPClient (hidden)

@dynamic startRequestOperationBlock;
@dynamic startRequestBlock;

- (void)setStartRequestOperationBlock:(void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientRequestOperationBlockAssociatedObjectKey, startRequestOperationBlock, OBJC_ASSOCIATION_RETAIN);
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

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                                      success:(void (^)(AFHTTPRequestOperation *, id))success
                                      failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    NSMutableURLRequest *request = [self requestWithMethod:method path:resource parameters:parameters];
    
    [request setAllHTTPHeaderFields:headers];
    
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

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:method resource:resource parameters:parameters headers:headers
                           success:^(AFHTTPRequestOperation *operation, id response) {
                               [delegate client:self requestOperation:operation didSuccessfulWithObject:response];
                           }
                           failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                               [delegate client:self requestOperation:operation didFailWithError:error];
                           }
            ];
}

- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers;
{
    AFHTTPRequestOperation *operation;
    
    operation = [self requestWithMethod:method resource:resource parameters:parameters headers:headers
                                success:^(AFHTTPRequestOperation *operation, id response) {
                                    // TODO: (readonly) operation.responseObject is == id reponse
                                    NSLog(@"%@ ?= %@", NSStringFromClass([operation.responseData class]), NSStringFromClass([response class]));
                                }
                                failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                    NSLog(@"%@ ?= %@", operation.error, error);
                                }
                 ];
    [operation waitUntilFinished];
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
