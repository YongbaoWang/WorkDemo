//
//  RequestManager.h
//  WorkDemo
//
//  Created by Abao on 15-7-13.
//  Copyright (c) 2015年 Ever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MethodConstant.h"

@protocol RequestManagerDelegate <NSObject>

@required
-(void)requestType:(RequestType)type didFinish:(id)result;
-(void)requestType:(RequestType)type didFail:(NSError *)error;

@end

@interface RequestManager : NSObject

+(RequestManager *)shared;
-(void)sendRequest:(RequestType)type withParameters:(NSArray *)params;

@end
