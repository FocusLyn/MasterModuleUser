//
//  MasterViewController.m
//  MasterModuleUser
//
//  Created by FocusLyn on 01/14/2019.
//  Copyright (c) 2019 FocusLyn. All rights reserved.
//

#import "MasterViewController.h"
#import "UserViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

#pragma mark - Action
- (void)gotoModule_User:(UIButton *)sender {
    UserViewController *logionVC = [[UserViewController alloc] init];
    
    [self.navigationController pushViewController:logionVC animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Test";
    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat width = CGRectGetWidth(self.view.frame);
    CGFloat padding = 15;
    
    UIButton *userButton = [[UIButton alloc] init];
    [userButton setTitle:@"用户信息模块" forState:UIControlStateNormal];
    [userButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    userButton.backgroundColor = [UIColor blackColor];
    [userButton setFrame:CGRectMake(padding, 100, (width-padding*3)/2, 40)];
    [userButton addTarget:self action:@selector(gotoModule_User:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:userButton];
}

@end
