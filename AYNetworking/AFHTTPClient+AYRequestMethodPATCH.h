//
//  AFHTTPClient+AYRequestMethodPATCH.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethodPATCH)

// TODO: Delagete API

// Block API

/**
 */
- (void)patch:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)patch:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)patch:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

/**
 */
- (void)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *operation, id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

// TODO: Synchronous API

@end
