//
//  AFHTTPClient+AYRequestMethodDELETE.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodDELETE)

// TODO: Delagete API

// Block API

/**
 */
- (void)delete:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)delete:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)delete:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// TODO: Synchronous API

@end
