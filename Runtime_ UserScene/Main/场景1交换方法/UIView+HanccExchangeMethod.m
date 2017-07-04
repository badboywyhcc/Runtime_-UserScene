//
//  UIView+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UIView+HanccExchangeMethod.h"
#import <objc/runtime.h>

@implementation UIView (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        // 获取方法
        SEL originalSEL = @selector(setBackgroundColor:);
        SEL customSEL = @selector(HanccSetBackgroundColor:);
        Method originalMethod   = class_getInstanceMethod(self, originalSEL);
        Method customMethod     = class_getInstanceMethod(self, customSEL);
        
        BOOL success = class_addMethod(self, originalSEL, method_getImplementation(customMethod), method_getTypeEncoding(customMethod));
        if (success)
        {
            class_replaceMethod(self, customSEL, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        }
        else
        {
            method_exchangeImplementations(originalMethod, customMethod);
        }
        NSLog(@"😝😝");
    });
}
-(void)HanccSetBackgroundColor:(UIColor *)color
{
#if 1
    [self HanccSetBackgroundColor:color];
#else
    if (![NSStringFromClass(self.class) isEqualToString:@"UIView"])
        [self HanccSetBackgroundColor:[UIColor yellowColor]];
#endif
}

@end
