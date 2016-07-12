//
//  MainViewController.m
//  UIButtonBadge
//
//  Created by 王会洲 on 16/7/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "MainViewController.h"
#import "UIButton+Badge.h"
#import "BaseViewController.h"
#import "ChilOneViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * badgeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    badgeButton.frame = CGRectMake(100, 100, 50, 50);
    badgeButton.backgroundColor = [UIColor lightGrayColor];
    [badgeButton addTarget:self action:@selector(readBadgeValue:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:badgeButton];
    
    badgeButton.badgeValue = @"12";
    
}
-(void)readBadgeValue:(UIButton *)sender  {
  sender.badgeValue = @"";
    ChilOneViewController  * baseView = [[ChilOneViewController alloc] init];
    [self.navigationController pushViewController:baseView animated:YES];
}

@end
