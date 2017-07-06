//
//  HanccCommonComponentsConfig.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/6.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "HanccCommonComponentsConfig.h"
#import <objc/runtime.h>
@implementation HanccCommonComponentsConfig
/**
 *  单例
 */
+(HanccCommonComponentsConfig *)shareInstance
{
    static HanccCommonComponentsConfig *shareInstanceObj = nil;
    static  dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstanceObj = [[HanccCommonComponentsConfig alloc]init];
    });
    return shareInstanceObj;
}


+ (void)Hancc_viewDidLoad:(viewDidLoad)viewDidLoad 
{
    objc_setAssociatedObject(self, @selector(Hancc_viewDidLoad:), viewDidLoad, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void)Hancc_viewWillAppear:(viewWillAppear)viewWillAppear
{
    objc_setAssociatedObject(self, @selector(Hancc_viewWillAppear:), viewWillAppear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void)Hancc_viewDidAppear:(viewDidAppear)viewDidAppear
{
    objc_setAssociatedObject(self, @selector(Hancc_viewDidAppear:), viewDidAppear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void)Hancc_viewWillDisappear:(viewWillDisappear)viewWillDisappear{
    objc_setAssociatedObject(self, @selector(Hancc_viewWillDisappear:), viewWillDisappear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
+(void)Hancc_viewDidDisappear:(viewDidDisappear)viewDidDisappear{
    objc_setAssociatedObject(self, @selector(Hancc_viewDidDisappear:), viewDidDisappear, OBJC_ASSOCIATION_COPY_NONATOMIC);
}





@end
