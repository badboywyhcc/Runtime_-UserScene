//
//  exchangeMethodViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/3.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "exchangeMethodViewController.h"

@interface exchangeMethodViewController ()

@end

@implementation exchangeMethodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    
    
    UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
    lable1.backgroundColor = [UIColor grayColor];
    lable1.font = [UIFont systemFontOfSize:17];
    lable1.textColor = [UIColor redColor];
    [self.view addSubview:lable1];
}
@end
