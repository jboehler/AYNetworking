//
//  AFHTTPClient+AYRequestMethod.h
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import <AYNetworking.h>
#import "AYHTTPRequestOperationDelegate.h"
#import "AYHTTPClientDelegate.h"

@interface AFHTTPClient (AYRequestMethod)

@property (strong) id<AYHTTPClientDelegate> delegate;

/**
 */
- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout
                                      success:(void (^)(AFHTTPRequestOperation *, id))success
                                      failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure;

/**
 */
- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout delegate:(id<AYHTTPRequestOperationDelegate>)delegate;

/**
 */
- (AFHTTPRequestOperation *)requestWithMethod:(NSString *)method resource:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers timeout:(NSTimeInterval)timeout;

/**
 */
- (void)willStartRequestOperation:(void(^)(AFHTTPRequestOperation *))operation;

/**
 */
- (void)willStartRequest:(void(^)(NSMutableURLRequest *))request;


@end
