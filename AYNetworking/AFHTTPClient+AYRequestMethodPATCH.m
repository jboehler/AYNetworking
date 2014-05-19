//
//  AFHTTPClient+AYRequestMethodPATCH.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodPATCH.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodPATCH)

#pragma mark -
#pragma mark Delegate API

- (AFHTTPRequestOperation *)patch:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:nil headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:nil headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:parameters headers:nil timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:parameters headers:nil timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:nil headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:nil headers:headers timeout:timeout delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self patch:resource parameters:parameters headers:headers timeout:0 delegate:delegate];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate
{
    return [self requestWithMethod:@"PATCH" resource:resource parameters:parameters headers:headers timeout:timeout delegate:delegate];
}

#pragma mark -
#pragma mark Blocks API

- (AFHTTPRequestOperation *)patch:(NSString *)resource
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:nil headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource timeout:(NSTimeInterval)timeout
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:nil headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:parameters headers:nil timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:parameters headers:nil timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:nil headers:headers timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:nil headers:headers timeout:timeout success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self patch:resource parameters:parameters headers:headers timeout:0 success:success failure:failure];
}

- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                          success:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    return [self requestWithMethod:@"PATCH" resource:resource parameters:parameters headers:headers timeout:timeout success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource
{
    return [self patch:resource parameters:nil headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource timeout:(NSTimeInterval)timeout
{
    return [self patch:resource parameters:nil headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters
{
    return [self patch:resource parameters:parameters headers:nil timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
{
    return [self patch:resource parameters:parameters headers:nil timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers
{
    return [self patch:resource parameters:nil headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self patch:resource parameters:nil headers:headers timeout:timeout];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
{
    return [self patch:resource parameters:parameters headers:headers timeout:0];
}

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
{
    return [self requestWithMethod:@"PATCH" resource:resource parameters:parameters headers:headers timeout:timeout];
}

@end
