//
//  UserControl.m
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import "UserControl.h"
#import "UserInfo.h"

@implementation UserControl
-(void)loginMethod{
    
}

-(void)registerMethod{
    UserInfo *user = [[UserInfo alloc]init];
    [user userDic:@"li" :@"123"];
    
}
@end
