//
//  MainTabBarController.m
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "MainTabBarController.h"

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    MainNavigationController * home = [[MainNavigationController alloc]initWithRootViewController:[[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil]];
    
    home.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Home"
                                                   image:[UIImage imageNamed:@"lanqiu"]
                                           selectedImage:[UIImage imageNamed:@"lanqiu"]];
    

    MainNavigationController * my = [[MainNavigationController alloc]initWithRootViewController:[[MineViewController alloc]initWithNibName:@"MineViewController" bundle:nil]];
    my.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Mine"
                                                 image:[UIImage imageNamed:@"mine"]
                                         selectedImage:[UIImage imageNamed:@"mine"]];
    
    self.viewControllers = @[home,my];
    
}

+ (void)initialize {
    
    // 设置UITabBarItem主题
    [self setupTabBarItemTheme];
    
    // 设置UITabBar主题
    [self setupTabBarTheme];
}


+ (void)setupTabBarItemTheme {
    
    
    
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    
    /**设置文字属性**/
    // 普通状态
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14.0f], NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
    
    // 选中状态
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12.0f],NSForegroundColorAttributeName :tabBar_select_titleColor} forState:UIControlStateSelected];
    
    // 高亮状态
    //    [tabBarItem setTitleTextAttributes:@{} forState:UIControlStateHighlighted];
    
    // 不可用状态(disable)
    //    [tabBarItem setTitleTextAttributes:@{} forState:UIControlStateDisabled];
}

+ (void)setupTabBarTheme {
    
    
    UITabBar * tabBar =[UITabBar appearance];
    tabBar.backgroundColor = tabBar_color;
    
    tabBar.backgroundImage=[UIImage new];
    tabBar.shadowImage = [UIImage new];
    
    [tabBar setBarTintColor:tabBar_color];
    [tabBar setTintColor:tabBar_tintColor];
    
    
}
@end
