//
//  HotTableViewCell.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "HotTableViewCell.h"

@implementation HotTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.userImage.layer.cornerRadius =  30;
    // Configure the view for the selected state
}

@end
