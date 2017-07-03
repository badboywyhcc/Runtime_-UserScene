//
//  ViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "ViewController.h"
#import "exchangeMethodViewController.h"







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
    NSLog(@"交换方法");
    exchangeMethodViewController *vc = [[exchangeMethodViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
