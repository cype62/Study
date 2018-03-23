//
//  main.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UserInfo *user = [[UserInfo alloc]init];
        [user userDic];
        
        NSLog(@"%hhd",[user UserValidation:@"li" :@"1233"]);
    }
    return 0;
}
