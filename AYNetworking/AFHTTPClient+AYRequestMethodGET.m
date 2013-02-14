//
//  AFHTTPClient+AYRequestMethodGET.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodGET.h"

@implementation AFHTTPClient (AYRequestMethodGET)

#pragma mark -
#pragma mark Delegate API

- (AFHTTPRequestOperation *)get:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self get:resource parameters:nil headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self get:resource parameters:parameters headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self get:resource parameters:nil headers:headers delegate:delegate];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"GET" resource:resource parameters:parameters headers:headers delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)get:(NSString *)resource
            success:(void (^)(AFHTTPRequestOperation *, id))success
            failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self get:resource parameters:nil headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters
            success:(void (^)(AFHTTPRequestOperation *, id))success
            failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self get:resource parameters:parameters headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self get:resource parameters:nil headers:headers success:success failure:failure];
}

- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
            success:(void (^)(AFHTTPRequestOperation *, id))success
            failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"GET" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

@end
