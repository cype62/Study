//
//  StudyVideo.h
//  test2
//
//  Created by BennyChen on 2018/3/26.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudyServer.h"

@interface StudyVideo : NSObject{
    NSMutableArray *arr;
}

//视频操作方法
-(void)actionChoice;
//查看所有ios视频
-(void)allVedio;
@end
