//
//  UIView+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UIView+HanccExchangeMethod.h"
#import "HanccGetPropertyMethod.h"

@implementation UIView (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token originalSEL:@selector(setBackgroundColor:) customSEL:@selector(HanccSetBackgroundColor:)];
}
-(void)HanccSetBackgroundColor:(UIColor *)color
{
#if 1  //条件编译,为0:执行原来的内容，不为0:hook  走hook方法
    [self HanccSetBackgroundColor:color];
#else
    if (![NSStringFromClass(self.class) isEqualToString:@"UIView"])
        [self HanccSetBackgroundColor:[UIColor greenColor]];
#endif
}

@end
