//
//  ScreenView.h
//  PleaseToEat
//
//  Created by lanou3g on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenView : UIView
//约会label
@property (nonatomic,strong)UILabel *appointmentLabel;
//约会类型
@property (nonatomic,strong)UISegmentedControl *appointmentSeg;
//发起者label
@property (nonatomic,strong)UILabel *sponsorLabel;
//发起者类型
@property (nonatomic,strong)UISegmentedControl *sponsorSeg;
//约会日期label
@property (nonatomic,strong)UILabel *dateLable;
//约会日期
@property (nonatomic,strong)UISegmentedControl *dateSeg;
//高级选项
@property (nonatomic,strong)UILabel *highClass;
//Normol下字体属性
@property (nonatomic,strong)NSDictionary *norDic;
//选中时字体属性
@property (nonatomic,strong)NSDictionary *seleDic;
@end
