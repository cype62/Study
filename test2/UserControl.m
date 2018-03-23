//
//  UserControl.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "UserControl.h"


@implementation UserControl

-(id)init{
    self = [super init];
    if (self){
//        初始化用户信息数据
        _user = [[UserInfo alloc]init];
       
    }
    return self;
}

//登录方法
-(void)loginMethod{
    
//         使用一个缓冲区
        char buffer_name[1000];
        char buffer_pw[1000];
//         读取控制台的输入信息
        NSLog(@"请录入帐号：");
        scanf("%s",buffer_name);
        NSLog(@"\n请录入密码：");
        scanf("%s",buffer_pw);
//        接收控制台输入信息（这里是以接收输入的序号为例）
        __block NSString *loginname = [NSString stringWithUTF8String:buffer_name];
        __block NSString *loginpw = [NSString stringWithUTF8String:buffer_pw];
    
//        Myblock b1 = ^(NSString *log){
//            NSLog(@"%@",log);
//            };
            BOOL result = [_user UserValidation:loginname :loginpw ];
        NSLog(@"结果是：%d",result);
    
}

//注册方法
-(void)registerMethod{
    // 使用一个缓冲区
    char buffer_name[1000];
    char buffer_pw[1000];
    // 读取控制台的输入信息
    NSLog(@"请录入帐号：");
    scanf("%s",buffer_name);
    NSLog(@"\n请录入密码：");
    scanf("%s",buffer_pw);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString *name = [NSString stringWithUTF8String:buffer_name];
    NSString *pw = [NSString stringWithUTF8String:buffer_pw];
    
//    [user userDic:@"li" :@"123"];
//    把账号密码传给user字典
    [_user userDic:name :pw];
//    调用登录方法
    [self loginMethod];
}
@end
