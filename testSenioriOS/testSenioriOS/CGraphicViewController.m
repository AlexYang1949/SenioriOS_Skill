//
//  CGraphicViewController.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/3/24.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "CGraphicViewController.h"
#import "CGraphicImageView.h"
@interface CGraphicViewController ()
@property(nonatomic,strong)CGraphicImageView *imageView;
@end

@implementation CGraphicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Core Graphic";
    
    [self addRoundedPath];
}

- (void)initUI{
    _imageView = [[CGraphicImageView alloc] initWithFrame:CGRectMake(100, 100, 200 , 200)];
    _imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_imageView];
}

- (void)addLinePath{
    //    线的路径
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    //    起点
    [linePath moveToPoint:CGPointMake(20, 20)];
    //    其他点
    [linePath addLineToPoint:CGPointMake(60, 60)];
    [linePath addLineToPoint:CGPointMake(80, 40)];
    
    CAShapeLayer *lineLayer = [CAShapeLayer layer];
    lineLayer.lineWidth = 2;
    lineLayer.strokeColor = [UIColor greenColor].CGColor;
    lineLayer.path = linePath.CGPath;
    lineLayer.fillColor = nil;
    
    [self.view.layer addSublayer:lineLayer];
}

- (void)addRoundedPath{
    UIBezierPath *roundPath = [UIBezierPath bezierPathWithRoundedRect:_imageView.bounds cornerRadius:40];
    CAShapeLayer *pathLayer = [CAShapeLayer layer];
    pathLayer.lineWidth = 2;
    pathLayer.strokeColor = [UIColor greenColor].CGColor;
    pathLayer.path = roundPath.CGPath;
    self.view.layer.mask = pathLayer;
}




@end
