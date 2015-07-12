//
//  MethodConstant.m
//  WorkDemo
//
//  Created by Abao on 15-7-13.
//  Copyright (c) 2015年 Ever. All rights reserved.
//

#import "MethodConstant.h"

@implementation MethodConstant

+(NSString *)methodNameWithRequestType:(RequestType)type{
    NSString *methodName = nil;
    switch (type) {
        case kRequestTypeRegister:
            methodName = @"register";
            break;
        case kRequestTypeLogin:
            methodName = @"getCities";
            break;
        default:
            NSAssert(false, @"no method for the request type!");
            break;
    }
    return methodName;
}

@end
