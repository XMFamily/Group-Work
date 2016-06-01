//
//  ViewController.m
//  GroupWork
//
//  Created by 徐明明 on 16/5/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "CZAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"项目初建立");
    [self setupUI];
    [self loadData];
    NSLog(@"徐明明");
}

- (void)loadData {
    
}
#pragma mark - 设置界面
- (void)setupUI {
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton *button =[[UIButton alloc] init];
    button.center = self.view.center;
    [button setTitle:@"Click" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitleColor:[UIColor cz_colorWithHex:0x5A4534] forState:UIControlStateNormal];
    
    [self.view addSubview:button];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
