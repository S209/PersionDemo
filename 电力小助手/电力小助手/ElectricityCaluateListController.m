//
//  ElectricityCaluateListController.m
//  电力小助手
//
//  Created by tuhaisheng on 2018/9/17.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "ElectricityCaluateListController.h"
#import "ElectricCurrentCaluateController.h"
const CGFloat custFontSize = 15;
@interface ElectricityCaluateListController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ElectricityCaluateListController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"电力小助手";
    [self setupView];
}

- (void)setupView{
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
}

#pragma mark delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *idDes = @"emptyCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idDes];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idDes];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ElectricCurrentCaluateController * currentCalculation = [[ElectricCurrentCaluateController alloc] init];
        [self.navigationController pushViewController:currentCalculation animated:YES];
    }
}
#pragma mark layze
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (NSArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = @[@"计算电流",@"电容量速查",@"计算电容表电感频率"];
    }
    return _dataArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
