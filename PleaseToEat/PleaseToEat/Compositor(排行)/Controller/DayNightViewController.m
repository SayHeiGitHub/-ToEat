//
//  DayNightViewController.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "DayNightViewController.h"
#import "TextFileViewController.h"
#import "ShaixuanViewController.h"
@interface DayNightViewController ()

@end

@implementation DayNightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"返回";
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"筛选" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)];
    [self.navigationItem setRightBarButtonItem:leftButton];
    

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    [btn setTitle:@"我有故事,你有酒吗?" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btn.titleEdgeInsets = UIEdgeInsetsMake(3, 5, 3, 250);
    btn.adjustsImageWhenHighlighted = YES;
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(380, 13, 15, 15)];
//    image.backgroundColor =[ UIColor redColor];
    image.image = [UIImage imageNamed:@"leisure_edit"];
    image.userInteractionEnabled = NO;
    [btn addSubview:image];
   

    
    
    
    self.tableView.tableHeaderView = btn;
}


-(void)leftAction:(UIBarButtonItem *)sender{
    ShaixuanViewController *shaixuan = [[ShaixuanViewController alloc]init];
    [self.navigationController pushViewController:shaixuan animated:YES];
    
    
    
}


-(void)btnAction:(UIButton *)sender{
    TextFileViewController *text = [[TextFileViewController alloc]init];
//    UINavigationController *textNV = [[UINavigationController alloc]initWithRootViewController:text];
//    [self presentViewController:textNV animated:YES completion:nil];
    [self.navigationController pushViewController:text animated:YES];
    NSLog(@"点击了");
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
