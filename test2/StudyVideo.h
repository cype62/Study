//
//  StudyVideo.h
//  test2
//
//  Created by BennyChen on 2018/3/26.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DoChoiceDelegate;
@interface StudyVideo : NSObject{
    NSMutableDictionary *dic;
}
@property(nonatomic,weak) id<DoChoiceDelegate> Delegate;
//返回选择登录后的操作
-(void)backStudyServer;
//视频操作方法
-(void)actionChoice;
//查看所有ios视频
-(void)allVedio;
@end

@protocol DoChoiceDelegate <NSObject>

@optional
-(void)choiceStudy;

@end
