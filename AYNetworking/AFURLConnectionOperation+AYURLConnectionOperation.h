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

@property (readonly) BOOL isSuccess __attribute__((deprecated("use 'isSuccessful' instead!")));
@property (readonly) BOOL isSuccessful;

/**
 return nil if is not finished (isFinished)
 */
@property (readonly) BOOL isFailure __attribute__((deprecated("use 'isFailed' instead!")));
@property (readonly) BOOL isFailed;
/**
 return the repsonse object (set on AFHTTPRequestOperation subclass)
 */
@property (readonly, strong) id responseObject;

@end
