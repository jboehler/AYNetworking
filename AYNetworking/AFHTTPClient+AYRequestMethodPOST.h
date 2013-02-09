//
//  AFHTTPClient+AYRequestMethodPOST.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodPOST)

// TODO: Delagete API

// Block API

/**
 */
- (void)post:(NSString *)resource
    success:(void (^)(AFHTTPRequestOperation *operation, id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)post:(NSString *)resource parameters:(NSDictionary *)parameters
    success:(void (^)(AFHTTPRequestOperation *operation, id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)post:(NSString *)resource headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *operation, id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *operation, id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// TODO: Synchronous API

@end
