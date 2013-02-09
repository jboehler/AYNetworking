//
//  AFHTTPClient+AYRequestMethodDELETE.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodDELETE.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodDELETE)

#pragma mark -
#pragma mark Delegate API

#pragma mark -
#pragma mark Blocks API

- (void)delete:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self delete:resource parameters:nil headers:nil success:success failure:failure];
}

- (void)delete:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self delete:resource parameters:parameters headers:nil success:success failure:failure];
}

- (void)delete:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self delete:resource parameters:nil headers:headers success:success failure:failure];
}

- (void)delete:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self requestWithMethod:@"DELETE" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

@end
