//
//  UILabel+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UILabel+HanccExchangeMethod.h"
#import <objc/runtime.h>
@implementation UILabel (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        // 获取方法
        SEL originalSEL = @selector(setText:);
        SEL customSEL = @selector(HanccSetText:);
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
-(void)HanccSetText:(NSString *)str
{
#if 1
    [self HanccSetText:str];
#else
    if (![NSStringFromClass(self.class) isEqualToString:@"UILabel"])
        [self HanccSetText:@"哈哈哈,嘿嘿嘿!"];
#endif
}
@end
