//
//  UserInfo.h
//  test2
//
//  Created by BennyChen on 2018/3/23.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^Myblock) (NSString *name);

@interface UserInfo : NSObject
//存储用户信息
@property(nonatomic,strong) NSMutableDictionary* user;
//用户名
@property(nonatomic,strong) NSString* username;
//密码
@property(nonatomic,strong) NSString* passwd;

//用户字典
-(void)userDic:(NSString *)newname :(NSString *)newpasswd;

//用户验证接口
-(BOOL)UserValidation:(NSString *)newname :(NSString *)newpasswd ;
@end
