//
//  XMTabBarController.m
//  GroupWork
//
//  Created by 徐明明 on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XMTabBarController.h"

@interface XMTabBarController ()

@end

@implementation XMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark - 设置界面
- (void)setupUI {
    self.view.backgroundColor= [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
