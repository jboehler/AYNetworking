//
//  AYHTTPRequestOperationDelegate.h
//  AYNetworking
//
//  Created by Jan Boehler on 14.02.13.
//  Copyright (c) 2013 Jan B√∂hler. All rights reserved.
//

@class AFHTTPClient;
@class AFHTTPRequestOperation;

@protocol AYHTTPRequestOperationDelegate <NSObject>

@required

- (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didFailWithError:(NSError *)error;

- (void)client:(AFHTTPClient *)client requestOperation:(AFHTTPRequestOperation *)operation didSuccessfulWithObject:(id)response;

@end
