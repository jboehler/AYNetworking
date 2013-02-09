//
//  AFHTTPClient+AYRequestMethodGET.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodGET)

// TODO: Delagete API

// Block API

/**
 */
- (void)get:(NSString *)resource
            success:(void (^)(AFHTTPRequestOperation *operation, id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)get:(NSString *)resource parameters:(NSDictionary *)parameters
            success:(void (^)(AFHTTPRequestOperation *operation, id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)get:(NSString *)resource headers:(NSDictionary *)headers
            success:(void (^)(AFHTTPRequestOperation *operation, id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)get:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
            success:(void (^)(AFHTTPRequestOperation *operation, id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// TODO: Synchronous API

@end
