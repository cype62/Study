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
-(int)loginMethod{
    
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
    return result;
    
}

//注册方法
-(void)registerMethod{
    NSLog(@"*****************IOS学习系统登录界面****************");
//     使用一个缓冲区
    char buffer_name[1000];
    char buffer_pw[1000];
//     读取控制台的输入信息
    NSLog(@"请输入注册用户名：");
    scanf("%s",buffer_name);
    NSLog(@"\n请输入注册密码：");
    scanf("%s",buffer_pw);
//     接收控制台输入信息（这里是以接收输入的序号为例）
    NSString *name = [NSString stringWithUTF8String:buffer_name];
    NSString *pw = [NSString stringWithUTF8String:buffer_pw];
    
//    把账号密码传给user字典
    [_user userDic:name :pw];
//    调用选择操作方法
//    [LoginServer doChoice];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"choice" object:nil];
}
@end
