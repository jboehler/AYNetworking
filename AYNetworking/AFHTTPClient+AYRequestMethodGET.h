//
//  AFHTTPClient+AYRequestMethodGET.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>
#import "AYHTTPRequestOperationDelegate.h"

@interface AFHTTPClient (AYRequestMethodGET)

// Delagete API

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

// Block API

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                        success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// Synchronous API

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers;

/**
 */
- (AFHTTPRequestOperation *)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

@end
