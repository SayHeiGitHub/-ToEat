//
//  shaixuanView.h
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface shaixuanView : UIView
//想看的用户label
@property (nonatomic,strong)UILabel *appointmentLabel;
//想看的用户类型
@property (nonatomic,strong)UISegmentedControl *appointmentSeg;
//排序label
@property (nonatomic,strong)UILabel *sponsorLabel;
//排序类型
@property (nonatomic,strong)UISegmentedControl *sponsorSeg;
//Normol下字体属性
@property (nonatomic,strong)NSDictionary *norDic;
//选中时字体属性
@property (nonatomic,strong)NSDictionary *seleDic;
@end
