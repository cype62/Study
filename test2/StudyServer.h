//
//  StudyServer.h
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudyVideo.h"

@interface StudyServer : NSObject<DoChoiceDelegate>

//选择操作内容
-(void)choiceStudy;
@end


