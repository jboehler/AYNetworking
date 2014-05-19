//
//  AFHTTPClient+AYRequestMethodPOST.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodPOST)

// Delagete API

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

// Block API

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource timeout:(NSTimeInterval)timeout
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                         success:(void (^)(AFHTTPRequestOperation *operation, id response))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// Synchronous API

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers;


/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers;

/**
 */
- (AFHTTPRequestOperation *)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

@end
