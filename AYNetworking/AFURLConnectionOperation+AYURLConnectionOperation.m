//
//  AFURLConnectionOperation+AYURLConnectionOperation.m
//  AYNetworking
//
//  Created by Jan Boehler on 23.02.13.
//  Copyright (c) 2013 Jan B√∂hler. All rights reserved.
//

#import "AFURLConnectionOperation+AYURLConnectionOperation.h"

@implementation AFURLConnectionOperation (AYURLConnectionOperation)

@dynamic isSuccess;
@dynamic isFailure;

- (BOOL)isFailure
{
    if (self.isFinished) {
        return self.error ? YES : NO;
    }
    return nil;
}

- (BOOL)isSuccess
{
    if (self.isFinished) {
        return self.isFailure ? NO : YES;
    }
    return nil;
}

@end
