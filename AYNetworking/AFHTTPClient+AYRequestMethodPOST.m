//
//  AFHTTPClient+AYRequestMethodPOST.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodPOST.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodPOST)

#pragma mark -
#pragma mark Delegate API

#pragma mark -
#pragma mark Blocks API

- (void)post:(NSString *)resource
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self post:resource parameters:nil headers:nil success:success failure:failure];
}

- (void)post:(NSString *)resource parameters:(NSDictionary *)parameters
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self post:resource parameters:parameters headers:nil success:success failure:failure];
}

- (void)post:(NSString *)resource headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self post:resource parameters:nil headers:headers success:success failure:failure];
}

- (void)post:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
    success:(void (^)(AFHTTPRequestOperation *, id))success
    failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self requestWithMethod:@"POST" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

@end
