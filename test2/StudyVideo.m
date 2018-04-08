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
    dic = [[NSMutableDictionary alloc]init];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(actionChoice) name:@"actionChoice" object:nil];
    
    return self;
}

//视频操作方法
-(void)actionChoice{
    
    NSLog(@"\n请输入要选择的功能：");
    int num = [putNum(@"\n1 查看所有iOS视频\n2 通过id选择播放某一iOS视频\n3 添加一个新的iOS视频\n4 删除某一iOS视频\n5 返回\n") intValue];
    
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
            [self backStudyServer];
            break;
        default:
            NSLog(@"\n输入有误，请重新输入");
            [self actionChoice];
            break;
    }
}

//查看所有iOS视频
-(void)allVedio{
    if(dic.count == 0){
        NSLog(@"\n视频为空\n");
    }else{
        for (NSString *item in dic) {
            NSLog(@"视频ID：%@ 视频名称：%@\n",item,[dic objectForKey:item]);
        }
        NSLog(@"观看iOS学习视频中...\n");
    }
    //    返回
    [self actionChoice];
}

//通过id选择播放某一iOS视频
-(void)playViedByID{
    if(dic.count == 0){
        NSLog(@"\n当前没有视频数据。\n");
        [self actionChoice];
    }else{
        int num = [putNum(@"\n请输入要选择观看的视频ID：") intValue];
        //    判断视频是否存在
        if([[dic allKeys] containsObject:[NSString stringWithFormat:@"%d",num]]){
            NSString *item = [dic objectForKey:[NSString stringWithFormat:@"%d",num]];
            NSLog(@"\n视频ID：%d   视频名称：%@\n",num,item);
        }else{
            NSLog(@"\n您查找的视频不存在。\n");
        }
        //    返回
        [self actionChoice];
    }

}


//添加一个新的iOS视频
-(void)addVedio{
    NSString *vedioName = putNum(@"\n请输入要添加的视频名称：");
    NSString *vedioID = putNum(@"\n请请输入要添加的视频ID ID不能重复：");
    if([[dic allKeys] containsObject:vedioID]){
        NSLog(@"输入的视频ID有重复，请重新输入。\n");
        [self addVedio];
    }else{
        [dic setObject:vedioName forKey:vedioID];
    }
//    返回
    [self actionChoice];
}

//删除某一iOS视频
-(void)delVedioByID{
    int num = [putNum(@"请输入要删除的视频ID：\n") intValue];
    if(dic.count != 0 && [[dic allKeys] containsObject:[NSString stringWithFormat:@"%d",num]] ){
        [dic removeObjectForKey:[NSString stringWithFormat:@"%d",num]];
        NSLog(@"\n删除成功！\n");
        //    返回
    }else{
        NSLog(@"\n没有找到该视频编号。\n");
    }
    
    [self actionChoice];
}

//委托：返回上一层（choiceStudy）
-(void)backStudyServer{
    [self.Delegate choiceStudy];
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

