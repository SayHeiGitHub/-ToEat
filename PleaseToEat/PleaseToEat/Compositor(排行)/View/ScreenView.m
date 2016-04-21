//
//  ScreenView.m
//  PleaseToEat
//
//  Created by lanou3g on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "ScreenView.h"

@implementation ScreenView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self allViews];
    }
    return self;
}

- (void)allViews{
    self.norDic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],
                    NSForegroundColorAttributeName:[UIColor grayColor]};
    self.seleDic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],
                     NSForegroundColorAttributeName:[UIColor whiteColor]};
    //约会label
    UILabel *appointmentLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 5,kWidth-15,45)];
    self.appointmentLabel = appointmentLabel ;
    self.appointmentLabel.text = @"约会类型";
    self.appointmentLabel.textColor = [UIColor grayColor];
    [self addSubview:self.appointmentLabel];
    //    //约会类型
    NSArray *segmentArray1 = [[NSArray alloc]initWithObjects:@"不限",@"双人约会",@"多人聚会", nil];
    UISegmentedControl *segment1 = [[UISegmentedControl alloc]initWithItems:segmentArray1];
    segment1.frame = CGRectMake(-3, CGRectGetMaxY(self.appointmentLabel.frame)+2, kWidth+6, 40);
   
    [segment1 setTitleTextAttributes:self.norDic forState:UIControlStateNormal];
    [segment1 setTitleTextAttributes:self.seleDic forState:UIControlStateSelected];
    segment1.selectedSegmentIndex = 0;
    segment1.tintColor = [UIColor redColor];
    self.appointmentSeg = segment1 ;
    [self addSubview:self.appointmentSeg];
    //发起者label

    UILabel *sponsorLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(self.appointmentSeg.frame)+2, kWidth-15, 45)];
    sponsorLabel.text = @"发起者性别";
    sponsorLabel.textColor = [UIColor grayColor];
    self.sponsorLabel = sponsorLabel ;
    [self addSubview:self.sponsorLabel];
    //    //发起者类型
    NSArray *segmentArray2 = [NSArray arrayWithObjects:@"不限",@"女",@"男",nil];
    //    @property (nonatomic,strong)UISegmentedControl *sponsorSeg;
    UISegmentedControl *segment2 = [[UISegmentedControl alloc]initWithItems:segmentArray2];
    segment2.frame = CGRectMake(-3, CGRectGetMaxY(self.sponsorLabel.frame)+2, kWidth+6, 40);
    segment2.selectedSegmentIndex = 0 ;
    segment2.tintColor = [UIColor redColor];
    self.sponsorSeg = segment2 ;
    [self addSubview:self.sponsorSeg];
    [self.sponsorSeg setTitleTextAttributes:self.norDic forState:UIControlStateNormal];
    [self.sponsorSeg setTitleTextAttributes:self.seleDic forState:UIControlStateSelected];
    //    //约会日期label
    //    @property (nonatomic,strong)UILabel *dateLable;
    UILabel *dateLable = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(self.sponsorSeg.frame), kWidth-15, 45)];
    dateLable.text = @"约会日期";
    dateLable.textColor = [UIColor grayColor];
    self.dateLable = dateLable ;
    [self addSubview:self.dateLable];
    //    //约会日期
    //    @property (nonatomic,strong)UISegmentedControl *dateSeg;
    NSArray *seg3Array = [NSArray arrayWithObjects:@"不限",@"今天",@"明天",@"未来一周", nil];
    UISegmentedControl *seg3 = [[UISegmentedControl alloc]initWithItems:seg3Array];
    seg3.frame = CGRectMake(-3, CGRectGetMaxY(self.dateLable.frame)+2, kWidth+6, 40);
    seg3.selectedSegmentIndex = 0;
    seg3.tintColor = [UIColor redColor];
    [seg3 setTitleTextAttributes:self.norDic forState:UIControlStateNormal];
    [seg3 setTitleTextAttributes:self.seleDic forState:UIControlStateSelected];
    self.dateSeg = seg3 ;
    [self addSubview:self.dateSeg];
    //    //高级选项
    //    @property (nonatomic,strong)UILabel *highClass;
    UILabel *highClass = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(self.dateSeg.frame), kWidth-15, 45)];
    highClass.text = @"高级选项";
    highClass.textColor = [UIColor grayColor];
    self.highClass = highClass;
    [self addSubview:self.highClass];
    
    
}
@end
