//
//  HotTableViewCell.h
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *floorNum; // 楼层数

@property (strong, nonatomic) IBOutlet UIImageView *userImage; // 用户头像

@property (strong, nonatomic) IBOutlet UILabel *userName; //用户名

@property (strong, nonatomic) IBOutlet UILabel *motive; // 主题

@property (strong, nonatomic) IBOutlet UILabel *messName;  // 餐厅名字
@property (strong, nonatomic) IBOutlet UILabel *time; // 时间

@property (strong, nonatomic) IBOutlet UILabel *eatType;  //吃饭类型

@property (strong, nonatomic) IBOutlet UILabel *synopsis; // 简介


@property (strong, nonatomic) IBOutlet UILabel *Looknum; // 看过数量

@property (strong, nonatomic) IBOutlet UILabel *signupNum;  // 报名数

@property (strong, nonatomic) IBOutlet UILabel *commentNum;  //评论数





@end
