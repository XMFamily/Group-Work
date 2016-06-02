//
//  AppDelegate.m
//  GroupWork
//
//  Created by 徐明明 on 16/5/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "XMTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    
    XMTabBarController *tab = [[XMTabBarController alloc] init];
    
    
    
    _window.rootViewController = tab;
    [_window makeKeyAndVisible];
    
    return YES;
}


@end
