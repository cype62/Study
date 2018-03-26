//
//  StudyVideo.m
//  test2
//
//  Created by BennyChen on 2018/3/26.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "StudyVideo.h"

@implementation StudyVideo

-(id)init{
    self = [super init];
    arr = [[NSMutableArray alloc]init];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(actionChoice) name:@"actionChoice" object:nil];
    
    return self;
}

//视频操作方法
-(void)actionChoice{
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"\n请输入要选择的功能：");
    NSLog(@"\n1 查看所有iOS视频\n2 通过id选择播放某一iOS视频\n3 添加一个新的iOS视频\n4 删除某一iOS视频");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    int num = [flag intValue];
    
    
    
    switch (num) {
        case 1:
            [self allVedio];
            break;
        case 2:
            [self playViedByID];
            break;
        case 3:
            [self addVedio];
            break;
        case 4:
            [self delVedioByID];
            break;
        default:
            break;
    }
}

//查看所有iOS视频
-(void)allVedio{
    
    for (NSString *item in arr) {
        NSLog(@"%@",item);
    }
    if(arr.count == 0){
        NSLog(@"视频为空");
    }
    NSLog(@"观看iOS学习视频中...");
}

//通过id选择播放某一iOS视频
-(void)playViedByID{
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"\n请输入要选择观看的视频ID：");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    int num = [flag intValue];
//    判断视频是否存在
    if(arr.count != 0){
        for (NSString *item in arr) {
            if(num-1 == [arr indexOfObject:item]){
                NSLog(@"观看iOS学习视频中...");
            }else{
                NSLog(@"您查找的视频不存在");
            }
        }
    }else{
        NSLog(@"您查找的视频不存在");
    }
}


//添加一个新的iOS视频
-(void)addVedio{
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"\n添加一个新的ios视频");
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    [arr addObject:flag];
    [self actionChoice];
}
//删除某一iOS视频
-(void)delVedioByID{
    
}


-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"actionChoice" object:nil];
}
@end

