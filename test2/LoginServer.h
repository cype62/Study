//
//  LoginServer.h
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserControl.h"


typedef void (^Myblock) (void);
@interface LoginServer : UserControl
//选择操作方式
-(void)doChoice;
@end
