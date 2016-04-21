//
//  RootController.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/20.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "RootController.h"
#import "CompViewController.h"
#import "ContactViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"
#import "TabBar.h"
#import "NavigationViewController.h"
@interface RootController ()<UITabBarControllerDelegate,TabBarDelegate>

@end

@implementation RootController

- (void)viewDidLoad {
    [super viewDidLoad];

    CompViewController *comp = [[CompViewController alloc]init];
    [self addOneChildVC:comp title:@"排行" imageName:@"TabIconRank" selectedImageName:@"TabIconRank_"];
    MessageViewController *message = [[MessageViewController alloc]init];
    [self addOneChildVC:message title:@"消息" imageName:@"TabIconMessage" selectedImageName:@"TabIconMessage_"];
    ContactViewController *contact = [[ContactViewController alloc ]init];
    [self addOneChildVC:contact title:@"联系人" imageName:@"TabIconContact" selectedImageName:@"TabIconContact_"];
    MineViewController *mine = [[MineViewController alloc]init];
    [self addOneChildVC:mine title:@"我的" imageName:@"TabIconMine" selectedImageName:@"TabIconMine_"];

    TabBar *costomTabBar = [[TabBar alloc]init];
    [self.tabBar addSubview:costomTabBar];
    [self setValue:costomTabBar forKey:@"tabBar"];
    self.delegate = self;
    costomTabBar.delegatee = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
    
    
}

-(void)tabBarDidClickedPlshButton:(TabBar *)tabBar{
   
}

- (void)addOneChildVC:(UIViewController *)childVC title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    //设置标题
    childVC.title = title;
    //设置tabBarItem的普通颜色
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    // 富文本方式 改变颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [childVC.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
//    //添加为tabBar控制器的子控制器
    NavigationViewController *naVC = [[NavigationViewController alloc] initWithRootViewController:childVC];
    naVC.navigationBar.barTintColor = [UIColor redColor];
//    naVC.childViewControllerForStatusBarStyle = UIStatusBarStyleLightContent;
    [self addChildViewController:naVC];
    
}

//-(UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
