//
//  XMTabBarController.m
//  GroupWork
//
//  Created by 徐明明 on 16/6/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XMTabBarController.h"
#import "XMNavigationController.h"

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
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    [arrayM addObject:[self viewControllerWithClsName:@"ViewController" titleName:@"我的" imageName:@"TabBar_Assets"]];
    
    
    self.viewControllers = arrayM;
}


- (UIViewController *)viewControllerWithClsName:(NSString *)clsName titleName:(NSString *)title imageName:(NSString *)imageName {
    
    Class cls = NSClassFromString(clsName);
    
    UIViewController *vc = [[cls alloc] init];
    
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *imageSelected = [UIImage imageNamed:[imageName stringByAppendingFormat:@"_Sel"]];
    
    vc.tabBarItem.selectedImage = [imageSelected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.title = title;
    
    XMNavigationController *nc = [[XMNavigationController alloc] initWithRootViewController:vc];
    
    return nc;
    
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
