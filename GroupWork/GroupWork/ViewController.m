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
    
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    NSLog(@"我是许仙，我在找白娘子");
    
    NSLog(@"呼叫白娘子 ,许仙找你了");
}

- (void)loadData {
    
}
#pragma mark - 设置界面
- (void)setupUI {
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton *button =[[UIButton alloc] init];
    
    [button setTitle:@"Click" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitleColor:[UIColor cz_colorWithHex:0x5A4534] forState:UIControlStateNormal];
    [button sizeToFit];
    button.center = self.view.center;
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)click:(UIButton *)button {
    //发光
    [button setShowsTouchWhenHighlighted:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
