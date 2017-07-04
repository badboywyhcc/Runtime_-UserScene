//
//  Person+HanccAddProperty.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "Person+HanccAddProperty.h"
#import <objc/runtime.h>
//将会根据这个字符串来设置和获取值。字符串的值就是属性名。
static const char *personHeight = "personHeight";
static const char *personSizeArr= "personSizeArr";
@implementation Person (HanccAddProperty)
-(void)setHeight:(float)height
{
    objc_setAssociatedObject(self, personHeight, @(height), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(float)height
{
    NSNumber *h = objc_getAssociatedObject(self, personHeight);
    return h.floatValue;
}
-(void)setSizeArr:(NSArray *)sizeArr
{
    objc_setAssociatedObject(self, personSizeArr, sizeArr, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSArray *)sizeArr
{
    return objc_getAssociatedObject(self, personSizeArr);
}
@end
