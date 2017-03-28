//
//  ViewController.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/2/22.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//
#ifdef DEBUG
# define DebugLog(fmt, ...) NSLog((@"\n[文件名:%s]\n""[函数名:%s]\n""[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define DebugLog(...);
#endif

#import "ViewController.h"
#import "CGraphicViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic , strong) NSArray *Items;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _Items = @[@"runtime",@"animation",@"draw",@"CAShapeLayer",@"Quartz2D",@"UIResponse"];

}

#pragma mark -- UITableView
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _Items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell.textLabel setFont:[UIFont systemFontOfSize:20]];
        cell.textLabel.text = _Items[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self pushSBViewControllerID:NSStringFromClass([CGraphicViewController class]) sbName:@"Main" animated:YES];
}
@end
