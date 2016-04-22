//
//  TextFileViewController.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "TextFileViewController.h"

@interface TextFileViewController ()

@end

@implementation TextFileViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[ UIColor grayColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.textFileView = [[UITextView alloc]initWithFrame:CGRectMake(10,70, [UIScreen mainScreen].bounds.size.width-20, 300)];
    self.textFileView.keyboardType = UIKeyboardTypeDefault;
//    self.textFileView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.textFileView.layer.cornerRadius = 6.0;
//    self.textFileView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.textFileView];

    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)];
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    // Do any additional setup after loading the view.
}


-(void)rightAction:(UIBarButtonItem *)sender{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
