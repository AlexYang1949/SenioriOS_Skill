//
//  Father.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/3/7.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "Father.h"

@implementation Father
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"F-Son=%@",NSStringFromClass([self class]));
        NSLog(@"F-Father=%@",NSStringFromClass([super class]));
    }
    return self;
}
@end
