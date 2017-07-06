//
//  UIViewController+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UIViewController+HanccExchangeMethod.h"
#import "HanccGetPropertyMethod.h"
#import "HanccCommonComponentsConfig.h"

@interface HanccCommonComponentsConfig (Hancc)
#pragma mark- 不对外开放的视图控制对象生命周期API函数
+(viewDidLoad)Hancc_viewDidLoad;
+(viewWillAppear)Hancc_viewWillAppear;
+(viewDidAppear)Hancc_viewDidAppear;
+(viewWillDisappear)Hancc_viewWillDisappear;
+(viewDidDisappear)Hancc_viewDidDisappear;
@end
@implementation HanccCommonComponentsConfig (Hancc)
+(viewDidLoad)Hancc_viewDidLoad{
    return objc_getAssociatedObject(self, @selector(Hancc_viewDidLoad:));
}
+(viewWillAppear)Hancc_viewWillAppear{
    return objc_getAssociatedObject(self, @selector(Hancc_viewWillAppear:));
}
+(viewDidAppear)Hancc_viewDidAppear{
    return objc_getAssociatedObject(self, @selector(Hancc_viewDidAppear:));
}
+(viewWillDisappear)Hancc_viewWillDisappear{
    return objc_getAssociatedObject(self, @selector(Hancc_viewWillDisappear:));
}
+(viewDidDisappear)Hancc_viewDidDisappear{
    return objc_getAssociatedObject(self, @selector(Hancc_viewDidDisappear:));
}
@end


@implementation UIViewController (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token1;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token1 originalSEL:@selector(viewDidLoad) customSEL:@selector(HanccViewDidLoad)];
    static dispatch_once_t token2;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token2 originalSEL:@selector(viewWillAppear:) customSEL:@selector(HanccViewWillAppear:)];
    static dispatch_once_t token3;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token3 originalSEL:@selector(viewDidAppear:) customSEL:@selector(HanccViewDidAppear:)];
    static dispatch_once_t token4;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token4 originalSEL:@selector(viewWillDisappear:) customSEL:@selector(HanccViewWillDisappear:)];
    static dispatch_once_t token5;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token5 originalSEL:@selector(viewDidDisappear:) customSEL:@selector(HanccViewDidDisappear:)];
}
- (void)HanccViewDidLoad
{
    [self HanccViewDidLoad];
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        !HanccCommonComponentsConfig.Hancc_viewDidLoad?:[HanccCommonComponentsConfig Hancc_viewDidLoad](self);
}
-(void)HanccViewWillAppear:(BOOL)animated
{
    [self HanccViewWillAppear:animated];
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        !HanccCommonComponentsConfig.Hancc_viewWillAppear?:[HanccCommonComponentsConfig Hancc_viewWillAppear](self);
}
-(void)HanccViewDidAppear:(BOOL)animated
{
    [self HanccViewDidAppear:animated];
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        !HanccCommonComponentsConfig.Hancc_viewDidAppear?:[HanccCommonComponentsConfig Hancc_viewDidAppear](self);
}
-(void)HanccViewWillDisappear:(BOOL)animated
{
    [self HanccViewWillDisappear:animated];
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        !HanccCommonComponentsConfig.Hancc_viewWillDisappear?:[HanccCommonComponentsConfig Hancc_viewWillDisappear](self);
}
-(void)HanccViewDidDisappear:(BOOL)animated
{
    [self HanccViewDidDisappear:animated];
    if (![NSStringFromClass(self.class) isEqualToString:@"UIViewController"])
        !HanccCommonComponentsConfig.Hancc_viewDidDisappear?:[HanccCommonComponentsConfig Hancc_viewDidDisappear](self);
}
@end

