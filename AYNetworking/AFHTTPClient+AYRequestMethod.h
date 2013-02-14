//
//  AFHTTPClient+AYRequestMethod.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFHTTPClient (AYRequestMethod)

/**
 */
- (void)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
                  success:(void (^)(AFHTTPRequestOperation *, id))success
                  failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure;

/**
 */
- (void)willStartRequestOperation:(void(^)(AFHTTPRequestOperation *))operation;

/**
 */
- (void)willStartRequest:(void(^)(NSMutableURLRequest *))request;


@end
