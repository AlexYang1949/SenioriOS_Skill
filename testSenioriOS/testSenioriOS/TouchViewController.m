//
//  TouchViewController.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/4/11.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "TouchViewController.h"


@interface TouchViewController ()

@end

@implementation TouchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)even{
//    NSLog(@"touch=%@",touches);
    NSEnumerator *enumerator = [touches objectEnumerator];
//    for (UITouch *object in enumerator) {
//        NSLog(@"set对象:%lu",(unsigned long)object.tapCount);
//    }
//    NSLog(@"event=%@",even);
    NSLog(@"began tag = x");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Move Event=%@",event);
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"End Event=%@",event);
}


@end
