//
//  UserControl.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "UserControl.h"
#import "UserInfo.h"

@implementation UserControl
//登录方法
-(void)loginMethod{
    
}

//注册方法
-(void)registerMethod{
    // 使用一个缓冲区
    char buffer_name[1000];
    char buffer_pw[1000];
    // 读取控制台的输入信息
    NSLog(@"请填写帐号：");
    scanf("%s",buffer_name);
    NSLog(@"\n请填写密码：");
    scanf("%s",buffer_pw);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString *name = [NSString stringWithUTF8String:buffer_name];
    NSString *pw = [NSString stringWithUTF8String:buffer_pw];
    UserInfo *user = [[UserInfo alloc]init];
//    [user userDic:@"li" :@"123"];
//    把账号密码传给user字典
    [user userDic:name :pw];
    
}
@end
