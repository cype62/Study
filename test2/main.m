//
//  main.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"
#import "UserControl.h"
#import "LoginServer.h"
#import "StudyVideo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LoginServer *user = [[LoginServer alloc]init];
//        UserInfo *user2 = [[UserInfo alloc]init];
//        StudyVideo *video = [[StudyVideo alloc]init];
        
//        [user doChoice];
        [user registerMethod];
//        [video allVedio];
        
//        NSLog(@"%hhd",[user2 UserValidation:@"li" :@"123"]);
    }
    return 0;
}
