//
//  HanccGetPropertyMethod.h
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface HanccGetPropertyMethod : NSObject
/**
 *  描述  : 获取对象的所有属性
 *  返回  ：NSArray类型,属性的集合
 */
- (NSArray *)HanccGetAllProperties;
/**
 *  描述  : 获取对象的所有属性和属性内容
 *  返回  ：NSDictionary类型,属性以及对应的值
 */
- (NSDictionary *)HanccGetAllPropertiesAndVaules;
/**
 *  描述  : 打印对象的所有方法
 *  返回  ：无
 */
-(void)HanccGetAllMethods;
/**
 *  描述             : hook 交换方法
 *  obj             : 输入self即可
 *  token           : static dispatch_once_t token
 *  originalsel     : 原来的方法名
 *  customsel       : 新方法名
 *  返回             ：无
 */

+(void)HanccLoadMethod:(id)obj
        dispatch_token:(dispatch_once_t)token
           originalSEL:(SEL)originalsel
             customSEL:(SEL)customsel;
@end
