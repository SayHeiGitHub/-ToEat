//
//  ScreenViewController.m
//  PleaseToEat
//
//  Created by lanou3g on 16/4/21.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "ScreenViewController.h"
#import "CompViewController.h"
#import "MHActionSheet.h"
#import "ScreenView.h"
@interface ScreenViewController ()

@end

@implementation ScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 40.0;
    [self allViews];
    [self loadDataSource];
    [self.tableView reloadData];
}
- (void)allViews{
    self.screenV = [[ScreenView alloc]initWithFrame:CGRectMake(-2, 0, kWidth+4, (kHight-64)*1/2+15)];
    self.tableView.tableHeaderView = self.screenV;
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"筛选";
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarAction:)];
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.tableView.frame = CGRectMake(0, CGRectGetMaxY(self.screenV.frame), kWidth, 150);
    self.tableView.rowHeight = 40;
    UIView *footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kWidth, 25)];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(kWidth-130, 10, 130, 15)];
    [button setTitle:@"重置所有条件" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [footView addSubview:button];
    self.tableView.tableFooterView = footView;
    [button addTarget:self action:@selector(resetAction) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)loadDataSource
{
    self.dataSource = [NSMutableArray new];
    [_dataSource addObject:@"年龄"];
    [_dataSource addObject:@"星座"];
    [_dataSource addObject:@"职业"];
    
    self.selectSource = [NSMutableArray new];
//    [_selectSource addObject:@"不限"];
    for (int i = 0; i < self.dataSource.count; i++) {
        [_selectSource addObject:@"不限"];
    }
}

// 完成按钮
-(void)rightBarAction:(UIBarButtonItem *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)resetAction{
    
    self.screenV.sponsorSeg.selectedSegmentIndex = 0 ;
    self.screenV.appointmentSeg.selectedSegmentIndex = 0;
    self.screenV.dateSeg.selectedSegmentIndex = 0 ;
    self.selectSource = [NSMutableArray new];
    for (int i = 0; i < self.dataSource.count; i++) {
        [_selectSource addObject:@"不限"];
    }

    [self.tableView reloadData];
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cell_id = @"cell_id";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_id ];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell_id];
    }
    cell.textLabel.text = self.dataSource[indexPath.row];
    cell.textLabel.textColor = [UIColor grayColor];
//    self.decTitle =  _selectSource[indexPath.row];
    cell.detailTextLabel.text = _selectSource[indexPath.row];;
    cell.detailTextLabel.textColor = [UIColor blackColor];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40.0;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //选中后立即取消选中状态
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    switch (indexPath.row) {
        case 0:
        {
            MHActionSheet *actionSheet = [[MHActionSheet alloc]initSheetWithTitle:@"岁数" style:MHSheetStyleDefault itemTitles:@[@"不限",@"18-22",@"23-26",@"27-35",@"35岁以上"]];
            actionSheet.titleTextColor = [UIColor grayColor];
            actionSheet.titleTextFont = [UIFont systemFontOfSize:12];
            actionSheet.itemTextColor = [UIColor blueColor];
            actionSheet.cancleTextColor = [UIColor blueColor];
            __weak typeof(self) weakSelf = self;
            [actionSheet didFinishSelectIndex:^(NSInteger index, NSString *title) {
                 NSString *text= [NSString stringWithFormat:@"%@",title];
                [weakSelf.selectSource replaceObjectAtIndex:indexPath.row withObject:text];
             
                [weakSelf.tableView reloadData];
            }];
        }
            break;
        case 1:{
            MHActionSheet *actionSheet = [[MHActionSheet alloc]initSheetWithTitle:@"星座" style:MHSheetStyleDefault itemTitles:@[@"不限",@"白羊座",@"金牛座",@"双子座",@"巨蟹座",@"狮子座",@"处女座",@"天秤座",@"天蝎座",@"射手座",@"摩羯座",@"水瓶座",@"双鱼座"]];
            actionSheet.titleTextColor = [UIColor grayColor];
            actionSheet.titleTextFont = [UIFont systemFontOfSize:12];
            actionSheet.itemTextColor = [UIColor blueColor];
            actionSheet.cancleTextColor = [UIColor blueColor];
            __weak typeof(self) weakSelf = self;
            [actionSheet didFinishSelectIndex:^(NSInteger index, NSString *title) {
                NSString *text = [NSString stringWithFormat:@"%@", title];
                [weakSelf.selectSource replaceObjectAtIndex:indexPath.row withObject:text];
                [weakSelf.tableView reloadData];
            }];
            
        }
            break;
        case 2:{
            MHActionSheet *actionSheet = [[MHActionSheet alloc]initSheetWithTitle:@"职业" style:MHSheetStyleDefault itemTitles:@[@"不限",@"计算机/互联网/通信",@"生产/工艺/制造",@"商业/服务业/个体经营",@"金融/银行/投资/保险",@"文化/广告/传媒",@"媒体/音乐",@"娱乐/艺术",@"医疗/护理/制药",@"法律/法务",@"教育/培训",@"公务员/事业单位",@"学生"]];
            actionSheet.titleTextColor = [UIColor grayColor];
            actionSheet.titleTextFont = [UIFont systemFontOfSize:12];
            actionSheet.itemTextColor = [UIColor blueColor];
            actionSheet.cancleTextColor = [UIColor blueColor];
            __weak typeof(self) weakSelf = self;
            [actionSheet didFinishSelectIndex:^(NSInteger index, NSString *title) {
                NSString *text = [NSString stringWithFormat:@"%@", title];
                [weakSelf.selectSource replaceObjectAtIndex:indexPath.row withObject:text];
                [weakSelf.tableView reloadData];
            }];
   
            
        }
            break;
        default:
            break;
    }
    
}
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
