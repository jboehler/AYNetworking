//
//  AFHTTPClient+AYRequestMethodPUT.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodPUT.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodPUT)

#pragma mark -
#pragma mark Delegate API

- (AFHTTPRequestOperation *)put:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:nil headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:parameters headers:nil delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:nil headers:headers delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)put:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:parameters headers:nil success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:headers success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

- (AFHTTPRequestOperation *)put:(NSString *)resource
{
    return [self put:resource parameters:nil headers:nil];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters
{
    return [self put:resource parameters:parameters headers:nil];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers
{
    return [self put:resource parameters:nil headers:headers];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers];
}

@end
