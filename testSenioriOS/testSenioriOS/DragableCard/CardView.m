//
//  CardView.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/4/11.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "CardView.h"
#import "UIView+YYAdd.h"
@interface CardView()
@end
@implementation CardView

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        [self loadView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadView];
    }
    return self;
}


-(void)awakeFromNib{
    [self loadView];
    [super awakeFromNib];
}

- (void)loadView{
    self.backgroundColor = [UIColor orangeColor];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
