//
//  AFHTTPClient+AYRequestMethodPATCH.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodPATCH)

// Delagete API

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers delegate:(id<AYHTTPRequestOperationDelegate>)delegate;


// Block API

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (AFHTTPRequestOperation *)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// TODO: Synchronous API

@end
