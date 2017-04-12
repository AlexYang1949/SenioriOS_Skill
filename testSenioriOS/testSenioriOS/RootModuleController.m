//
//  RootModuleController.m
//  testSenioriOS
//
//  Created by shunweiwuxian on 2017/4/12.
//  Copyright © 2017年 shunweiwuxian. All rights reserved.
//

#import "RootModuleController.h"

@interface RootModuleController ()
@property(nonatomic,strong)NSArray *Items;
@end

@implementation RootModuleController

- (void)viewDidLoad {
    [super viewDidLoad];
    _Items = @[@"CardScrollController",@"TabBarViewController"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- TableView

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
    if ([[UIStoryboard storyboardWithName:@"Module" bundle:nil] instantiateViewControllerWithIdentifier:_Items[indexPath.row]]) {
        [self pushSBViewControllerID:_Items[indexPath.row]sbName:@"Module" animated:YES];
    }else{
        Class class = NSClassFromString(_Items[indexPath.row]);
        if (nil != class) {
            UIViewController *vc = [[class alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

@end
