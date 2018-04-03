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
    
    NSLog(@"\n请输入要选择的功能：");
    int num = [putNum(@"\n1 查看所有iOS视频\n2 通过id选择播放某一iOS视频\n3 添加一个新的iOS视频\n4 删除某一iOS视频\n5 返回") intValue];
    
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
        case 5:
            [self delVedioByID];
            break;
        default:
            NSLog(@"\n输入有误，请重新输入");
            [self actionChoice];
            break;
    }
}

//查看所有iOS视频
-(void)allVedio{
    
    for (NSString *item in arr) {
        NSLog(@"%@\n",item);
    }
    if(arr.count == 0){
        NSLog(@"\n视频为空");
    }
    NSLog(@"\n观看iOS学习视频中...");
//    返回
    [self actionChoice];
}

//通过id选择播放某一iOS视频
-(void)playViedByID{
    if(arr.count == 0){
        NSLog(@"\n当前没有视频数据。");
        [self actionChoice];
    }else{
        int num = [putNum(@"\n请输入要选择观看的视频ID：") intValue]-1;
        //    判断视频是否存在
        if(num <= arr.count){
            NSString *item = [arr objectAtIndex:num];
            NSLog(@"\n观看iOS学习视频中...视频%@",item);
        }else{
            NSLog(@"\n您查找的视频不存在。");
        }
        //    返回
        [self actionChoice];
    }

}


//添加一个新的iOS视频
-(void)addVedio{
    [arr addObject:putNum(@"\n添加一个新的ios视频")];
//    返回
    [self actionChoice];
}
//删除某一iOS视频
-(void)delVedioByID{
    int num = [putNum(@"请输入要删除的视频ID：\n") intValue]-1;
    if(arr.count != 0 && num <=arr.count ){
        [arr removeObjectAtIndex:num];
        NSLog(@"\n删除成功！");
        //    返回
    }else{
        NSLog(@"\n没有找到该视频编号。");
    }
    
    [self actionChoice];
}

NSString* putNum(NSString *con){
    //         使用一个缓冲区
    char str[1000];
    //         读取控制台的输入信息
    NSLog(@"%@", con);
    scanf("%s",str);
    // 接收控制台输入信息（这里是以接收输入的序号为例）
    NSString * flag = [NSString stringWithUTF8String:str];
    return flag;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"actionChoice" object:nil];
}
@end

