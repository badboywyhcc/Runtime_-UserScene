//
//  ModifyViewController.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/5.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "ModifyViewController.h"
#import "Person.h"
@interface ModifyViewController ()

@end

@implementation ModifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //对私有变量的更改
    [self changePrivateProperty];
}
#pragma mark - 对私有变量的更改
- (void)changePrivateProperty
{
    Person *onePerson = [[Person alloc] init];
    NSLog(@"Person属性 == %@",[onePerson description]);
    
    unsigned  int count = 0;
    Ivar *members = class_copyIvarList([Person class], &count);
    
    for (int i = 0; i < count; i++)
    {
        Ivar var = members[i];
        const char *memberAddress = ivar_getName(var);
        const char *memberType = ivar_getTypeEncoding(var);
        NSLog(@"获取所有属性 = %s ; type = %s",memberAddress,memberType);
    }
    //对私有变量的更改
    Ivar m_name    = members[0];
    Ivar m_address = members[1];
    object_setIvar(onePerson, m_address, @"北京市朝阳区");
    object_setIvar(onePerson, m_name, @"哈哈");
    NSLog(@"对私有变量的(地址)进行更改 : %@",[onePerson description]);
}

@end
