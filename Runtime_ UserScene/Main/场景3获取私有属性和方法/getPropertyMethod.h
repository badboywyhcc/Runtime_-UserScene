//
//  getPropertyMethod.h
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface getPropertyMethod : NSObject
/* 获取对象的所有属性 */
+ (NSArray *)getAllProperties:(id) obj;
/* 获取对象的所有属性和属性内容 */
+ (NSDictionary *)getAllPropertiesAndVaules:(id) obj;
/* 获取对象的所有方法 */
+(void)getAllMethods:(id) obj;
@end
