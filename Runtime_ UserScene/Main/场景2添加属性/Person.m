//
//  Person.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "Person.h"
@interface Person()
@property (nonatomic,copy) NSString *address;

@end
@implementation Person
- (instancetype)init {
    self = [super init];
    if (self) {
        _address = @"深圳南山区";
        self.name = @"桃园";
    }
    return self;
}
//公共方法
- (void)publicMethod
{
    NSLog(@"对外暴露的方法 %@",self.address);
}
//私有方法
- (void)privateMethod {
    NSLog(@"私有方法%@",self.name);
}
- (NSString *)description {
    return [NSString stringWithFormat:@" %@,  %@",self.address,self.name];
}
@end
