//
//  UILabel+HanccExchangeMethod.m
//  Runtime_ UserScene
//
//  Created by hcc on 2017/7/4.
//  Copyright © 2017年 Hancc. All rights reserved.
//

#import "UILabel+HanccExchangeMethod.h"
#import "HanccGetPropertyMethod.h"
@implementation UILabel (HanccExchangeMethod)
+(void)load
{
    static dispatch_once_t token;
    [HanccGetPropertyMethod HanccLoadMethod:self dispatch_token:token originalSEL:@selector(setText:) customSEL:@selector(HanccSetText:)];
}
-(void)HanccSetText:(NSString *)str
{
#if 1  //条件编译,为0:执行原来的内容，不为0:hook  走hook方法
    [self HanccSetText:str];
#else
    if (![NSStringFromClass(self.class) isEqualToString:@"UILabel"])
        [self HanccSetText:@"哈哈哈"];
#endif
}
@end
