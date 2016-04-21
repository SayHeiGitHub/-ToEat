//
//  SetingViewController.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/20.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "SetingViewController.h"

@interface SetingViewController ()

@end

@implementation SetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"设置";
    UIButton *rightBut = [UIButton buttonWithType:UIButtonTypeSystem];
    rightBut.frame = CGRectMake(0, 0, 80, 40);
    [rightBut setImage:[UIImage imageNamed:@"NaviBack_"] forState:UIControlStateNormal];
    [rightBut setImage:[UIImage imageNamed:@"NaviBack_"] forState:UIControlStateHighlighted];
    [rightBut setTitle:@"返回" forState:UIControlStateNormal];
    rightBut.titleLabel.textAlignment = NSTextAlignmentLeft;
    rightBut.titleEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 6);
    rightBut.imageEdgeInsets = UIEdgeInsetsMake(5, 4, 5, 10);
    rightBut.titleLabel.font = [UIFont systemFontOfSize:17];
    rightBut.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
    [rightBut addTarget:self action:@selector(leftBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightButtonFirst =[[UIBarButtonItem alloc]initWithCustomView:rightBut];
    self.navigationItem.leftBarButtonItem = rightButtonFirst;
}

-(void)leftBtnAction:(UIBarButtonItem *)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
