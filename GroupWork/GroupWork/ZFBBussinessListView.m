//
//  ZFBBussinessListView.m
//  GroupWork
//
//  Created by 尚诚诚 on 16/6/7.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZFBBussinessListView.h"

@implementation ZFBBussinessListView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}
#pragma mark - 搭建界面
- (void)setupUI{
    //创建按钮
    NSInteger count = 4;
    
    for (int i = 0; i < count; i++) {
        
        UIButton *button = [[UIButton alloc]init];
        
//        [button sizeToFit];
        
        [self addSubview:button];
    }

}
#pragma mark - 布局button
- (void)layoutSubviews{
    [super layoutSubviews];
    
    UIButton *button = self.subviews[0];
    
    [button sizeToFit];
    
    NSAttributedString *attr = [self setAttributeforButton:@"home_card" and:@"干什么"];
    
    [button setAttributedTitle:attr forState:UIControlStateNormal];
    
    
}

#pragma mark - 设置文本属性
- (NSAttributedString *)setAttributeforButton:(NSString *)imageImage and:(NSString *)title{
    //创建属性
    NSTextAttachment *attach = [[NSTextAttachment alloc]init];
    
    attach.image = [UIImage imageNamed:imageImage];
    
    attach.bounds = CGRectMake(0, 0, 40, 40);
    
    //创建文本属性
    NSAttributedString *attr = [NSAttributedString attributedStringWithAttachment:attach];
    //创建空白
    
    NSAttributedString *space = [[NSAttributedString alloc]initWithString:@"\n\n" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:12]}];
    
    //创建文本
    NSAttributedString *text = [[NSAttributedString alloc]initWithString:title attributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:13]}];
    //创建可变数组属性
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc]initWithAttributedString:attr];
    
    //设置空间局
    [attrM appendAttributedString:space];
    //设置文本
    [attrM appendAttributedString:text];
    
    //返回
    return attrM;
 
}

@end
