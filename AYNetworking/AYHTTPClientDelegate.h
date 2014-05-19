//
//  AYHTTPClientDelegate.h
//  AYNetworking
//
//  Created by Jan Boehler on 16.02.13.
//  Copyright (c) 2013 Jan Böhler. All rights reserved.
//

@class AFHTTPClient;
@class AFHTTPRequestOperation;

@protocol AYHTTPClientDelegate <NSObject>

@optional

- (void)client:(AFHTTPClient *)client willStartRequestOperation:(AFHTTPRequestOperation *)operation;

- (void)client:(AFHTTPClient *)client willStartWithRequest:(NSMutableURLRequest *)request;

@end
