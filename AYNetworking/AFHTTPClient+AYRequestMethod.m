//
//  AFHTTPClient+AYRequestMethod.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethod.h"
#import <objc/runtime.h>

static void *AFHTTPClientAssociatedObjectKey;

@interface AFHTTPClient (hidden)
@property (nonatomic, copy) void(^startRequestOperationBlock) (AFHTTPRequestOperation *);
@end

@implementation AFHTTPClient (hidden)

@dynamic startRequestOperationBlock;

- (void)setStartRequestOperationBlock:(void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    objc_setAssociatedObject(self, &AFHTTPClientAssociatedObjectKey, startRequestOperationBlock, OBJC_ASSOCIATION_COPY);
}

- (void (^)(AFHTTPRequestOperation *))startRequestOperationBlock
{
    return (void (^)(AFHTTPRequestOperation *))objc_getAssociatedObject(self, &AFHTTPClientAssociatedObjectKey);
}

@end

@implementation AFHTTPClient (AYRequestMethod)

- (void)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                  success:(void (^)(AFHTTPRequestOperation *, id))success
                  failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    NSMutableURLRequest *request = [self requestWithMethod:method path:resource parameters:parameters];
    [request setAllHTTPHeaderFields:headers];
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

@end
