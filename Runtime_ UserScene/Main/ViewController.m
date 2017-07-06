//
//  ViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "ViewController.h"
#import "exchangeMethodViewController.h"
#import "addPropertyViewController.h"
#import "getPrivateViewController.h"
#import "ModifyViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
// 交换方法
- (IBAction)exchangeMethod:(UIButton *)sender
{
//    NSLog(@"交换方法");
    exchangeMethodViewController *vc = [[exchangeMethodViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
// 类扩展添加的属性，子类不能继承。通过分类添加属性。
- (IBAction)addProperty:(UIButton *)sender
{
    addPropertyViewController *vc = [[addPropertyViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)getPrivate:(UIButton *)sender
{
    getPrivateViewController *vc = [[getPrivateViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)modifyProperty:(UIButton *)sender
{
    ModifyViewController *vc = [[ModifyViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
