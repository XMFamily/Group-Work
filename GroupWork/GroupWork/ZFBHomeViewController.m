//
//  ZFBHomeViewController.m
//  GroupWork
//
//  Created by 徐明明 on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZFBHomeViewController.h"
#import <Masonry/Masonry.h>
#import "ZFBBussinessListView.h"
@interface ZFBHomeViewController ()

@end

@implementation ZFBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor magentaColor];
    
    [self setUpUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 大块视图搭建
- (void)setUpUI{
    //创建上部视图
    ZFBBussinessListView *topView = [[ZFBBussinessListView alloc]init];
    topView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:topView];
    
    //自动布局
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.height.mas_equalTo(100);
    }];
    
    
    
}

@end
