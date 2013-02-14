//
//  AFHTTPClient+AYRequestMethodPOST.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodPOST.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodPOST)

#pragma mark -
#pragma mark Delegate API

- (AFHTTPRequestOperation *)post:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self post:resource parameters:nil headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self post:resource parameters:parameters headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self post:resource parameters:nil headers:headers delegate:delegate];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"POST" resource:resource parameters:parameters headers:headers delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)post:(NSString *)resource
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self post:resource parameters:nil headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self post:resource parameters:parameters headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self post:resource parameters:nil headers:headers success:success failure:failure];
}

- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"POST" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

@end
