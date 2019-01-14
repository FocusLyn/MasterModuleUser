//
//  UserViewController.m
//  MasterModuleUser
//
//  Created by master.lin on 2019/1/14.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"我的");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    self.view.backgroundColor = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:1];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
