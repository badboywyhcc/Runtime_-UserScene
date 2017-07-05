//
//  addPropertyViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "addPropertyViewController.h"
#import "Person+HanccAddProperty.h"
@interface addPropertyViewController ()

@end

@implementation addPropertyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor lightGrayColor];
    // 类扩展添加的属性，子类不能继承。通过分类添加属性。
    Person *p = [[Person alloc]init];
    p.name = @"Hancc";
    p.height = 17.6f;
    p.sizeArr = @[@15,@56,@78];
//    NSLog(@"name:%@ height:%f sizeArr:%@",p.name,p.height,p.sizeArr);
}


@end
