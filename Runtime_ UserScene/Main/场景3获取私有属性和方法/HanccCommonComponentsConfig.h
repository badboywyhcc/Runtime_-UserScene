//
//  HanccCommonComponentsConfig.h
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/6.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef void(^viewDidLoad)(UIViewController *vc);
typedef void(^viewWillAppear)(UIViewController *vc);
typedef void(^viewDidAppear)(UIViewController *vc);
typedef void(^viewWillDisappear)(UIViewController *vc);
typedef void(^viewDidDisappear)(UIViewController *vc);



@interface HanccCommonComponentsConfig : NSObject
/**
 *  单例
 */
+(HanccCommonComponentsConfig *)shareInstance;
#pragma mark- 对外开放的视图控制对象生命周期API函数
/**
 * 加载视图
 */
+(void)Hancc_viewDidLoad:(viewDidLoad)viewDidLoad;
/**
 * UIViewController对象的视图即将加入窗口时调用
 */
+(void)Hancc_viewDidAppear:(viewDidAppear)viewDidAppear;
/**
 * UIViewController对象的视图已经加入到窗口时调用
 */
+(void)Hancc_viewWillAppear:(viewWillAppear)viewWillAppear;
/**
 * UIViewController对象的视图即将消失、被覆盖或是隐藏时调用
 */
+(void)Hancc_viewWillDisappear:(viewWillDisappear)viewWillDisappear;
/**
 * UIViewController对象的视图已经消失、被覆盖或是隐藏时调用
 */
+(void)Hancc_viewDidDisappear:(viewDidDisappear)viewDidDisappear;



@end
