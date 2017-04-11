//
//  BaseView.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/4/11.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
    NSLog(@"began tag = %ld",self.tag);
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"end tag = %ld",self.tag);
}

@end
