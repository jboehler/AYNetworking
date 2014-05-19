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
    return [self put:resource parameters:nil headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:nil headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:parameters headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:parameters headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:nil headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:nil headers:headers timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self put:resource parameters:parameters headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers timeout:timeout delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)put:(NSString *)resource
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:parameters headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:parameters headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:headers timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:nil headers:headers timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self put:resource parameters:parameters headers:headers timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *, id))success
                        failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers timeout:timeout success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource
{
    return [self put:resource parameters:nil headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource timeout:(NSTimeInterval)timeout
{
    return [self put:resource parameters:nil headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters
{
    return [self put:resource parameters:parameters headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
{
    return [self put:resource parameters:parameters headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers
{
    return [self put:resource parameters:nil headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self put:resource parameters:nil headers:headers timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
{
    return [self put:resource parameters:parameters headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)put:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self requestWithMethod:@"PUT" resource:resource parameters:parameters headers:headers timeout:timeout];
}

@end
