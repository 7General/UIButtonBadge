//
//  BaseViewController.m
//  UIButtonBadge
//
//  Created by 王会洲 on 16/7/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (nonatomic, weak) UITableView * BaseTableView;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UITableView * BaseTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    BaseTableView.delegate = self;
    BaseTableView.dataSource = self;
    [self.view addSubview:BaseTableView];
    self.BaseTableView = BaseTableView;
}
#pragma mark -TABLEVIEW DELEGATE
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * ID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = @"123";
    return cell;
}



@end
