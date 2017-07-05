//
//  Person.h
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HanccGetPropertyMethod.h"
@interface Person : HanccGetPropertyMethod
@property(nonatomic,copy) NSString *name;
//公共方法
- (void)publicMethod;
@end
