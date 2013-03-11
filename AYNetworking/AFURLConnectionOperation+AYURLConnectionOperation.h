//
//  AFURLConnectionOperation+AYURLConnectionOperation.h
//  AYNetworking
//
//  Created by Jan Boehler on 23.02.13.
//  Copyright (c) 2013 Jan B√∂hler. All rights reserved.
//

#import <AYNetworking.h>

@interface AFURLConnectionOperation (AYURLConnectionOperation)
/**
 return nil if is not finished (isFinished)
 */
@property (readonly) BOOL isSuccess;

/**
 return nil if is not finished (isFinished)
 */
@property (readonly) BOOL isFailure;

/**
 return the repsonse object (set on AFHTTPRequestOperation subclass)
 */
@property (readonly, strong) id responseObject;

@end
