//
//  StudyServer.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "StudyServer.h"
#import "StudyVideo.h"

@implementation StudyServer

-(void)choiceStudy{
    NSLog(@"*****************IOS学习系统登录界面****************");
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"\n请选择：\n1是观看iOS学习视频。\n2是下载iOS学习视频。\n3是直接退出学习系统。");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    int num = [flag intValue];
    
    switch (num) {
        case 1:
//            1是观看iOS学习视频
            
            [[NSNotificationCenter defaultCenter]postNotificationName:@"actionChoice" object:nil];
            break;
        case 2:
//            2是下载iOS学习视频
            [[NSNotificationCenter defaultCenter]postNotificationName:@"actionChoice" object:nil];
            break;
        case 3:
//            3是直接退出学习系统
            [[NSNotificationCenter defaultCenter]postNotificationName:@"actionChoice" object:nil];
            break;
        default:
            break;
    }
}

//1是观看iOS学习视频
-(void)studyVideo{

}

//2是下载iOS学习视频
-(void)downLoanVideo{
    
}

//3是直接退出学习系统
-(void)checkOut{
    
}


@end
