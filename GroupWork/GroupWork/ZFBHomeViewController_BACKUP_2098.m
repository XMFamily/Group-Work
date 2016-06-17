//
//  ZFBHomeViewController.m
//  GroupWork
//
//  Created by 徐明明 on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZFBHomeViewController.h"
#import <Masonry/Masonry.h>
@interface ZFBHomeViewController ()

@end

@implementation ZFBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - 设置界面
- (void)setupUI {
    self.view.backgroundColor = [UIColor magentaColor];
    
<<<<<<< HEAD
    
=======
    [self setUpUI];
>>>>>>> 3a56265634cce4c8904085226dbc300074b9967a
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 大块视图搭建
- (void)setUpUI{
    //创建上部视图
    UIView *topView = [[UIView alloc]init];
    topView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:topView];
    
    //自动布局
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.height.mas_equalTo(100);
    }];
    
    
    
}

@end
