//
//  StudyVideo.m
//  test2
//
//  Created by BennyChen on 2018/3/26.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "StudyVideo.h"

@implementation StudyVideo

//-(id)init{
//    self = [super init];
//    if (self) {
//        StudyServer *studyServer = [[StudyServer alloc]init];
//        studyServer.Delegate = self;
//        [studyServer studyVideo];
//    }
//    return self;
//}

//查看所有ios视频
-(void)allVedio{
//    NSDictionary *dic ;
////  NSDictionary *dic  = @{@"1":@"111",@"2":@"222"}
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    for (NSString *item in arr) {
        NSLog(@"%@",item);
    }
    if(arr.count == 0){
        NSLog(@"视频为空");
        NSLog(@"观看iOS学习视频中...");
    }
    
}
//通过id选择播放某一ios视频
-(void)playViedByID{
    
}
//添加一个新的ios视频
-(void)addVedio{
    
}
//删除某一视频
-(void)delVedioByID{
    
}
@end

