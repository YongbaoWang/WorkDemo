//
//  MethodConstant.h
//  WorkDemo
//
//  Created by Abao on 15-7-13.
//  Copyright (c) 2015年 Ever. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    kRequestTypeRegister,
    kRequestTypeLogin
    
} RequestType;

@interface MethodConstant : NSObject

+(NSString *)methodNameWithRequestType:(RequestType)type;

@end
