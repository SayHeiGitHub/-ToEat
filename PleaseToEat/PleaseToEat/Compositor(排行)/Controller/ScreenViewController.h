//
//  ScreenViewController.h
//  PleaseToEat
//
//  Created by lanou3g on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ScreenView;
@interface ScreenViewController : UITableViewController
@property (nonatomic,strong)ScreenView *screenV;
@property (nonatomic,strong)NSMutableArray *dataSource;
@property (nonatomic,strong)NSMutableArray  *selectSource;
//cell上详情描述
@property (nonatomic,strong)NSString *decTitle;
@end
