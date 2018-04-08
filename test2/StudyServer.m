//
//  StudyServer.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "StudyServer.h"

@implementation StudyServer


-(void)choiceStudy{
    NSLog(@"*****************IOS学习系统学习视频界面****************");
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"\n请选择：\n1、观看iOS学习视频。\n2、下载iOS学习视频。\n3、直接退出学习系统。\n");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    int num = [flag intValue];
    
    StudyVideo *video = [[StudyVideo alloc]init];
    
    
    switch (num) {
        case 1:
//            1是观看iOS学习视频
            
            [[NSNotificationCenter defaultCenter]postNotificationName:@"actionChoice" object:nil];
            break;
        case 2:
//            2是下载iOS学习视频
            NSLog(@"\n正在下载学习资源中……\n");
            break;
        case 3:
//            3是直接退出学习系统
            [[NSNotificationCenter defaultCenter]postNotificationName:@"choice" object:nil];
            break;
        default:
            NSLog(@"输入有误，请重新输入\n");
            break;
    }
//    委托操作
    video.Delegate = self;
    [video backStudyServer];
}


@end
