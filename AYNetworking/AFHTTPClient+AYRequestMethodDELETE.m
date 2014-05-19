//
//  AFHTTPClient+AYRequestMethodDELETE.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodDELETE.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodDELETE)

#pragma mark -
#pragma mark Delegate API

- (AFHTTPRequestOperation *)delete:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:nil headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:nil headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:parameters headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:parameters headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:nil headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:nil headers:headers timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self delete:resource parameters:parameters headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"DELETE" resource:resource parameters:parameters headers:headers timeout:timeout delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)delete:(NSString *)resource
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:nil headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:nil headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:parameters headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:parameters headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:nil headers:headers timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:nil headers:headers timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self delete:resource parameters:parameters headers:headers timeout:0 success:success failure:failure];
}


- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *, id))success
                           failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"DELETE" resource:resource parameters:parameters headers:headers timeout:timeout success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource
{
    return [self delete:resource parameters:nil headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout
{
    return [self delete:resource parameters:nil headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters
{
    return [self delete:resource parameters:parameters headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
{
    return [self delete:resource parameters:parameters headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers
{
    return [self delete:resource parameters:nil headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self delete:resource parameters:nil headers:headers timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
{
    return [self delete:resource parameters:parameters headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self requestWithMethod:@"DELETE" resource:resource parameters:parameters headers:headers timeout:timeout];
}

@end
