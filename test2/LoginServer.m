//
//  LoginServer.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "LoginServer.h"

@implementation LoginServer
-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(doChoice) name:@"choice" object:nil];
    }
    return self;
}

//选择登录或注册操作方法
-(void)doChoice{
    NSLog(@"*****************IOS学习系统登录界面****************\n");
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"是否登录：\n1、登录\n2、不登录\n");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    int num = [flag intValue];
    switch (num) {
        case 1:
            //            登录
            if([self loginMethod]){
                StudyServer *study = [[StudyServer alloc]init];
                [study choiceStudy];
            }else{
                NSLog(@"请重新登录。\n");
                [self doChoice];
            }
            break;
        case 2:
//            注册
            [self registerMethod];
            break;
        default:
            NSLog(@"输入有误，请重新输入");
            [self doChoice];
            break;
    }
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"choice" object:nil];
}
@end
