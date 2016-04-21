//
//  TabBar.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/20.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "TabBar.h"

@interface TabBar ()
@property(nonatomic,weak)UIButton *plusButton;
@end
@implementation TabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupPlusbutton];
    }
    return self;
}
// 添加加号按钮
-(void)setupPlusbutton{
    UIButton *plusButton = [[UIButton alloc]init];
    [plusButton setBackgroundImage:[UIImage imageNamed:@"TabIconPublishBg"] forState:UIControlStateNormal];
    [plusButton setImage:[UIImage imageNamed:@"TabIconPublish_"] forState:UIControlStateNormal];
    [plusButton setImage:[UIImage imageNamed:@"TabIconPublish"] forState:UIControlStateHighlighted];
    [plusButton addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:plusButton];
    self.plusButton = plusButton;
    
}
-(void)plusClick{
    if ([self.delegatee respondsToSelector:@selector(tabBarDidClickedPlshButton:)]) {
        [self.delegatee tabBarDidClickedPlshButton:self];
    }
//    static int a = 0;
//    if (a==0) {
//        [self.plusButton setImage:[UIImage imageNamed:@"TabIconPublish_"] forState:UIControlStateNormal];
//        a = 1;
//    }else{
////        [self.plusButton setImage:[UIImage imageNamed:@"[#-#]"] forState:UIControlStateNormal];
//        [self.plusButton setBackgroundImage:[UIImage imageNamed:@"[#ﾟДﾟ]"] forState:UIControlStateNormal];
//    }
//    a = 0;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    // 设置所有tabbarButtonFrame
    [self setupTabBarButtonFrame];
    //设置加号的Frame
    [self setupPlusButtonFrame];

}
 //设置加号的Frame
-(void)setupPlusButtonFrame{
    self.plusButton.size = self.plusButton.currentBackgroundImage.size;
    self.plusButton.centerX = self.width/2;
    self.plusButton.centerY =self.height/2;
    
}
// 设置所有tabbarButtonFrame
-(void)setupTabBarButtonFrame{
    int index = 0;
    //遍历说有子控件
    for (UIView *tabBarButton in self.subviews) {
        //如果不是UITabBarButton,跳过
        if (![tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")])continue;
        //根据索引调整位置
        tabBarButton.width = self.width / (self.items.count +1);
        tabBarButton.height = self.height;
        tabBarButton.y = 0;
        if (index >= 2) {
            tabBarButton.x = tabBarButton.width *(index +1);
        }else{
            tabBarButton.x = tabBarButton.width *index;
        }
        index++;
    }
}
@end
