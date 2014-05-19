//
//  AFHTTPClient+AYRequestMethodDELETE.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodDELETE)

// Delagete API

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;


// Block API

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                           success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                           failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// Synchronous API

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers;

/**
 */
- (AFHTTPRequestOperation *)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

@end
