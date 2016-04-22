//
//  shaixuanView.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "shaixuanView.h"
#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHight [UIScreen mainScreen].bounds.size.height
@implementation shaixuanView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self allViews];
    }
    return self;
}
-(void)allViews{
//    self.backgroundColor = [UIColor greenColor];
    self.norDic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],
                    NSForegroundColorAttributeName:[UIColor grayColor]};
    self.seleDic = @{NSFontAttributeName:[UIFont systemFontOfSize:20],
                     NSForegroundColorAttributeName:[UIColor whiteColor]};
    //想看的用户 Label
    UILabel *appointmentLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 5,[UIScreen mainScreen].bounds.size.width-15,45)];
    self.appointmentLabel = appointmentLabel ;
    self.appointmentLabel.text = @"想看的用户";
    self.appointmentLabel.textColor = [UIColor grayColor];
    [self addSubview:self.appointmentLabel];
    //    想看的用户类型
    NSArray *segmentArray1 = [[NSArray alloc]initWithObjects:@"全部",@"男",@"女", nil];
    UISegmentedControl *segment1 = [[UISegmentedControl alloc]initWithItems:segmentArray1];
    segment1.frame = CGRectMake(-3, CGRectGetMaxY(self.appointmentLabel.frame)+2, [UIScreen mainScreen].bounds.size.width+6, 40);
    
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
}

@end
