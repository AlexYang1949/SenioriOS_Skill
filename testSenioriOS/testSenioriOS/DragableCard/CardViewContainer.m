//
//  CardViewContainer.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/4/11.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "CardViewContainer.h"
#import "CardView.h"
#import "UIView+YYAdd.h"
@interface CardViewContainer()
@property(nonatomic,strong)CardView *cardView;
@end
@implementation CardViewContainer
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        [self loadView];
    }
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
     [self loadView];
}


- (void)loadView{
   
    
    CardView *cv = [[CardView alloc] initWithFrame:CGRectMake(10, 10, 80, 130)];
    self.cardView = cv;
    cv.originalTransform = cv.transform;
    [self addSubview:cv];
    
     UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureHandle:)];
    [cv addGestureRecognizer:pan];
}


- (void)panGestureHandle:(UIPanGestureRecognizer *)gesture{
    CardView*cardView = (CardView *)gesture.view;
    
    // 移动位置
    CGPoint point = [gesture translationInView:self];
    CGPoint movedPoint = CGPointMake(gesture.view.centerX +point.x, gesture.view.centerY + point.y);
    cardView.center = movedPoint;
//    NSLog(@"point =%@",NSStringFromCGPoint(point));
    // 旋转角度
    cardView.transform = CGAffineTransformRotate(cardView.originalTransform, (M_PI_4 / 30));
    NSLog(@"transform=%f",cardView.transform.tx);
    NSLog(@"otransform=%f",cardView.originalTransform.tx);
    [gesture setTranslation:CGPointZero inView:self];

}




@end
