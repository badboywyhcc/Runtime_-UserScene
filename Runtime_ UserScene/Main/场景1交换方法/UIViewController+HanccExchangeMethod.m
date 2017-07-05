//
//  UIViewController+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UIViewController+HanccExchangeMethod.h"
#import "HanccGetPropertyMethod.h"
@implementation UIViewController (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token originalSEL:@selector(viewDidLoad) customSEL:@selector(HanccViewDidLoad)];
}
-(void)HanccViewDidLoad
{
#if 0  //条件编译,为0:执行原来的内容，不为0:hook  走hook方法
    [self HanccViewDidLoad];
#else
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        self.view.backgroundColor = [UIColor grayColor];
#endif
}
@end

