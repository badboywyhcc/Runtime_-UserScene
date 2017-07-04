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
/* 获取对象的所有属性 */
- (NSArray *)getAllProperties;
/* 获取对象的所有属性和属性内容 */
- (NSDictionary *)getAllPropertiesAndVaules;
/* 获取对象的所有方法 */
-(void)getAllMethods;
@end
