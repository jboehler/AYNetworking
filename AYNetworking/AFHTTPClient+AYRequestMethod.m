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
@property (nonatomic, copy) void(^startRequestOperationBlock) (AFHTTPRequestOperation *);
@property (nonatomic, copy) void(^startRequestBlock) (NSMutableURLRequest *);
@end

@implementation AFHTTPClient (hidden)

@dynamic startRequestOperationBlock;
@dynamic startRequestBlock;

- (void)setStartRequestOperationBlock:(void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientRequestOperationBlockAssociatedObjectKey, startRequestOperationBlock, OBJC_ASSOCIATION_COPY);
}

- (void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    return (void (^)(AFHTTPRequestOperation *))objc_getAssociatedObject(self, &AFHTTPClientRequestOperationBlockAssociatedObjectKey);
}

-(void)setStartRequestBlock:(void (^)(NSMutableURLRequest *))startRequestBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientRequestBlockAssociatedObjectKey, startRequestBlock, OBJC_ASSOCIATION_COPY);
}

- (void (^)(NSMutableURLRequest *))startRequestBlock
{
    return (void (^)(NSMutableURLRequest *))objc_getAssociatedObject(self, &AFHTTPClientRequestBlockAssociatedObjectKey);
}

@end

@implementation AFHTTPClient (AYRequestMethod)

- (void)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                  success:(void (^)(AFHTTPRequestOperation *, id))success
                  failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    NSMutableURLRequest *request = [self requestWithMethod:method path:resource parameters:parameters];
    
    [request setAllHTTPHeaderFields:headers];
    
    if (self.startRequestBlock) {
        self.startRequestBlock(request);
    }
    
    AFHTTPRequestOperation *requestOperation = [self HTTPRequestOperationWithRequest:request success:success failure:failure];
    
    if (self.startRequestOperationBlock) {
        self.startRequestOperationBlock(requestOperation);
    }
    
    [requestOperation start];
}

- (void)willStartRequestOperation:(void (^)(AFHTTPRequestOperation *))block
{
    
    self.startRequestOperationBlock = block;
}

- (void)willStartRequest:(void (^)(NSMutableURLRequest *))block
{
    
    self.startRequestBlock = block;
}




@end
