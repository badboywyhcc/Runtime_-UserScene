//
//  UIViewController+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UIViewController+HanccExchangeMethod.h"
#import <objc/runtime.h>
@implementation UIViewController (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        // 获取本类的类型
        Class selfClass = object_getClass(self);
        
        // 获取方法
        SEL originalSEL = @selector(setView:);
        Method originalMethod = class_getInstanceMethod(self, originalSEL);
        // 要交换的方法
        SEL customSEL = @selector(HanccSetView:);
        Method customMethod = class_getInstanceMethod(self, customSEL);
        
        BOOL success = class_addMethod(self, originalSEL, method_getImplementation(customMethod), method_getTypeEncoding(customMethod));
        if (success)
        {
            class_replaceMethod(self, customSEL, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        }
        else
        {
            method_exchangeImplementations(originalMethod, customMethod);
        }
    });
}
//-(void)HanccViewDidLoad
//{
//    [self HanccViewDidLoad];
//    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
//    {
//        self.view.backgroundColor = [UIColor greenColor];
//        NSLog(@"😝😝");
//    }
//}
-(void)HanccSetView:(UIView *)view
{
    [self setView:view];
     if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
     {
             view.backgroundColor = [UIColor purpleColor];
         NSLog(@"😝😝");
     }
    
}
@end

