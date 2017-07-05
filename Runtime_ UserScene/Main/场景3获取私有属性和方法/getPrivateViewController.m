//
//  getPrivateViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "getPrivateViewController.h"
#import "Person+HanccAddProperty.h"
@interface getPrivateViewController ()

@end

@implementation getPrivateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor lightGrayColor];
    Person *p = [[Person alloc]init];
    p.name = @"Hancc";
    p.height = 17.6f;
    p.sizeArr = @[@15,@56,@78];
    
    // 获取属性
    // 获取属性和对应的值
    NSArray *arr1 = [p HanccGetAllProperties];
    for (id obj in arr1)
    {
        NSLog(@"%@",obj);
    }
    
    
    // 获取属性和对应的值
    NSDictionary *dict = [p HanccGetAllPropertiesAndVaules];
    NSLog(@"字典:%@",dict);
    
    // 获取方法
    [p HanccGetAllMethods];
}

@end
