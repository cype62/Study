//
//  UserInfo.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo
-(void)userDic{
    _user = [[NSMutableDictionary alloc]init];
//    接受注册的账号密码
    [_user setObject:@"li" forKey:@"name"];
    [_user setObject:@"123" forKey:@"passwd"];
    NSLog(@"%@",_user.allValues);
//    保存账号密码
    _username = [_user objectForKey:@"name"];
    _passwd = [_user objectForKey:@"passwd"];
}

//用户验证接口
-(BOOL)UserValidation:(NSString *)newname :(NSString *)newpasswd{
    if(newname == _username && newpasswd == _passwd){
        //登录成功
        return YES;
    }else{
//        登录失败
        return NO;
    }
    
}


@end
