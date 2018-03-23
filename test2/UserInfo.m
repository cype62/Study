//
//  UserInfo.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "UserInfo.h"
//#import "UserControl.h"

@implementation UserInfo
-(void)userDic:(NSString *)newname :(NSString *)newpasswd {
    _user = [[NSMutableDictionary alloc]init];
//    接受注册的账号密码
    [_user setObject:newname forKey:@"name"];
    [_user setObject:newpasswd forKey:@"passwd"];
    NSLog(@"%@",_user.allValues);
//    保存账号密码
    _username = [_user objectForKey:@"name"];
    _passwd = [_user objectForKey:@"passwd"];
    NSLog(@"\n注册成功");

}

//用户验证接口
-(BOOL)UserValidation:(NSString *)newname :(NSString *)newpasswd {
        
    if(newname == _username && newpasswd == _passwd){
        //登录成功
        return YES;
    }else{
//        登录失败
        return NO;
    }
    
}


@end
