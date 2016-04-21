//
//  TabBar.h
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/20.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TabBar;
@protocol TabBarDelegate <NSObject>

@optional
-(void)tabBarDidClickedPlshButton:(TabBar *)tabBar;

@end

@interface TabBar : UITabBar

@property(nonatomic,weak)id<TabBarDelegate> delegatee;


@end
