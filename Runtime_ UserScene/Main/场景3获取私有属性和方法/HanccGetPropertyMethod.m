//
//  HanccGetPropertyMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "HanccGetPropertyMethod.h"

@implementation HanccGetPropertyMethod

/* 获取对象的所有属性 */
- (NSArray *)HanccGetAllProperties
{
    u_int count;
    objc_property_t *properties  =class_copyPropertyList([self class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName =property_getName(properties[i]);
        [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}
/* 获取对象的所有属性和属性内容 */
- (NSDictionary *)HanccGetAllPropertiesAndVaules
{
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties =class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++)
    {
        objc_property_t property = properties[i];
        const char* char_f =property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}
/* 获取对象的所有方法 */
-(void)HanccGetAllMethods
{
    unsigned int mothCout_f =0;
    Method* mothList_f = class_copyMethodList([self class],&mothCout_f);
    for(int i=0;i<mothCout_f;i++)
    {
        Method temp_f = mothList_f[i];
        IMP imp_f = method_getImplementation(temp_f);
        SEL name_f = method_getName(temp_f);
        const char* name_s =sel_getName(method_getName(temp_f));
        int arguments = method_getNumberOfArguments(temp_f);
        const char* encoding =method_getTypeEncoding(temp_f);
        NSLog(@"方法名：%@,参数个数：%d,编码方式：%@",[NSString stringWithUTF8String:name_s],
              arguments,
              [NSString stringWithUTF8String:encoding]);
    }
    free(mothList_f);
}

+(void)HanccLoadMethod:(id)obj dispatch_token:(dispatch_once_t)token originalSEL:(SEL)originalsel customSEL:(SEL)customsel
{
    dispatch_once(&token, ^{
        // 获取方法
        SEL originalSEL = originalsel;
        SEL customSEL = customsel;
        Method originalMethod   = class_getInstanceMethod(obj, originalSEL);
        Method customMethod     = class_getInstanceMethod(obj, customSEL);
        
        BOOL success = class_addMethod([obj class], originalSEL, method_getImplementation(customMethod), method_getTypeEncoding(customMethod));
        if (success)
        {
            class_replaceMethod(obj, customSEL, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        }
        else
        {
            method_exchangeImplementations(originalMethod, customMethod);
        }
//        NSLog(@"😝😝");
    });
}
@end
