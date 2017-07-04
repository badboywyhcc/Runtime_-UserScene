//
//  getPrivateViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "getPrivateViewController.h"
#import "Person+HanccAddProperty.h"
#import "getPropertyMethod.h"
@interface getPrivateViewController ()

@end

@implementation getPrivateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    Person *p = [[Person alloc]init];
    p.name = @"Hancc";
    p.height = 17.6f;
    p.sizeArr = @[@15,@56,@78];
    NSArray *arr1 = [getPropertyMethod getAllProperties:[Person class]];
    for (id obj in arr1)
    {
        NSLog(@"属性:%@",NSStringFromClass([obj class]));
    }
    
    UIButton *ii = [[UIButton alloc]init];
    
//    NSDictionary *dict = [getPropertyMethod getAllPropertiesAndVaules:ii];
    NSDictionary *dict = [p getAllPropertiesAndVaules];
    NSLog(@"字典:%@",dict);
    [getPropertyMethod getAllMethods:[Person class]];
}

@end
