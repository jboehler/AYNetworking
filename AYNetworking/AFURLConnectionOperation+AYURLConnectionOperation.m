//
//  AFURLConnectionOperation+AYURLConnectionOperation.m
//  AYNetworking
//
//  Created by Jan Boehler on 23.02.13.
//  Copyright (c) 2013 Jan B√∂hler. All rights reserved.
//

#import "AFURLConnectionOperation+AYURLConnectionOperation.h"
#import <objc/runtime.h>

static void *AFURLConnectionOperationResponseObjectAssociatedObjectKey;

@interface AFURLConnectionOperation (hidden)
@property (readwrite, strong) id responseObject;
@end

@implementation AFURLConnectionOperation (AYURLConnectionOperation)

@dynamic isSuccess, isSuccessful;
@dynamic isFailure, isFailed;
@dynamic responseObject;

- (BOOL)isFailed
{
    if (self.isFinished) {
        return self.error ? YES : NO;
    }
    return nil;
}

- (BOOL)isFailure
{
    return self.isFailed;
}

- (BOOL)isSuccessful
{
    if (self.isFinished) {
        return self.isFailed ? NO : YES;
    }
    return nil;
}

- (BOOL)isSuccess
{
    return self.isFailure;
}

- (void)setResponseObject:(id)responseObject
{
    objc_setAssociatedObject(self, &AFURLConnectionOperationResponseObjectAssociatedObjectKey, responseObject, OBJC_ASSOCIATION_RETAIN);
}

- (id)responseObject
{
    return objc_getAssociatedObject(self, &AFURLConnectionOperationResponseObjectAssociatedObjectKey);
}

@end
