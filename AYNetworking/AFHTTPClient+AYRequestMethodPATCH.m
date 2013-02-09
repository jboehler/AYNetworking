//
//  AFHTTPClient+AYRequestMethodPATCH.m
//  AYNetworking
//
//  Created by Jan Boehler on 09.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

#import "AFHTTPClient+AYRequestMethodPATCH.h"
#import "AFHTTPClient+AYRequestMethod.h"

@implementation AFHTTPClient (AYRequestMethodPATCH)

#pragma mark -
#pragma mark Delegate API

#pragma mark -
#pragma mark Blocks API

- (void)patch:(NSString *)resource
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self patch:resource parameters:nil headers:nil success:success failure:failure];
}

- (void)patch:(NSString *)resource parameters:(NSDictionary *)parameters
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self patch:resource parameters:parameters headers:nil success:success failure:failure];
}

- (void)patch:(NSString *)resource headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self patch:resource parameters:nil headers:headers success:success failure:failure];
}

- (void)patch:(NSString *)resource parameters:(NSDictionary *)parameters headers:(NSDictionary *)headers
     success:(void (^)(AFHTTPRequestOperation *, id))success
     failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self requestWithMethod:@"PATCH" resource:resource parameters:parameters headers:headers success:success failure:failure];
}

#pragma mark -
#pragma mark Synchronous API

@end
