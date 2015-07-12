//
//  RequestManager.m
//  WorkDemo
//
//  Created by Abao on 15-7-13.
//  Copyright (c) 2015年 Ever. All rights reserved.
//

#import "RequestManager.h"
#import "AFNetworking.h"
#import "AppMacro.h"

static RequestManager *requestManager;

@implementation RequestManager

+(RequestManager *)shared{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        requestManager = [[RequestManager alloc] init];
    });
    return requestManager;
}

-(void)sendRequest:(RequestType)type withParameters:(NSArray *)params{
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"43",@"code",
                       @"100",@"version",
                       @"00-00-99-00-00",@"device",//[[UIDevice currentDevice] macAddress],@"device",
                       @"skdf",@"salt1",@"dskf",@"salt2",
                       [MethodConstant methodNameWithRequestType:type],@"action",
                       params,@"paras",nil];


    NSError *err;
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:0 error: &err];
    NSString *paramsString = [data base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    NSString *urlString = [NSString stringWithFormat:@"%@%@",kServerAddress,paramsString];
    
    AFHTTPRequestOperationManager *httpManager = [AFHTTPRequestOperationManager manager];
    httpManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    //一般来说，Get后面，只有服务器地址，parameters 后面是参数，请求时，会自动把参数加在url后面；但是，这里用了base64编码，所以，就提前组合成了一个完整url。
    [httpManager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"request suceesss:%@",responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"request fail:%@",error);
    }];
}
@end
