//
//  UserControl.h
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"

@interface UserControl : NSObject{
    UserInfo *_user;
    
}

//注册方法
-(void)registerMethod;
//登录方法
-(int)loginMethod;
@end
