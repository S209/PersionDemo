//
//  ElectricCurrentCaluateController.m
//  电力小助手
//
//  Created by tuhaisheng on 2018/9/17.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "ElectricCurrentCaluateController.h"
#import <Masonry.h>
#import "ElectricityCaluateListController.h"

@interface ElectricCurrentCaluateController ()
@property (nonatomic, strong) UILabel *voltageLabel;//电压
@property (nonatomic, strong) UITextField *inputVoltageField;
@property (nonatomic, strong) UILabel *voltageLabelUnit;//电压单位
@property (nonatomic, strong) UILabel *voltageLabelSegmentView;//电压

@property (nonatomic, strong) UILabel *capacitanceLabel;//电容
@property (nonatomic, strong) UILabel *capacitanceSegmentView;//电容
@property (nonatomic, strong) UITextField *inputCapacitanceField;
@property (nonatomic, strong) UILabel *capacitanceLabelUnit;//电容单位

@property (nonatomic, strong) UILabel *frequencyLabel;//频率
@property (nonatomic, strong) UILabel *frequencySegmentView;//频率
@property (nonatomic, strong) UITextField *inputFrequencyField;
@property (nonatomic, strong) UILabel *frequencyLabelUnit;//频率单位

@property (nonatomic, strong) UILabel *electricCurrentLabel;//电流
@property (nonatomic, strong) UILabel *electricCurrentSegmentView;//电流
@property (nonatomic, strong) UILabel *inputelectricCurrentLabel;
@property (nonatomic, strong) UILabel *electricCurrentLabelUnit;//电流单位
@end

@implementation ElectricCurrentCaluateController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"计算电流";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupView];
}

#pragma mark
- (void)setupView{
    [self.view addSubview:self.voltageLabel];
    [self.view addSubview:self.inputVoltageField];
    [self.view addSubview:self.voltageLabelUnit];
    [self.view addSubview:self.voltageLabelSegmentView];
    
    [self.view addSubview:self.capacitanceLabel];
    [self.view addSubview:self.inputCapacitanceField];
    [self.view addSubview:self.capacitanceLabelUnit];
    [self.view addSubview:self.capacitanceSegmentView];
    
    [self.view addSubview:self.frequencyLabel];
    [self.view addSubview:self.inputCapacitanceField];
    [self.view addSubview:self.frequencyLabelUnit];
    [self.view addSubview:self.frequencySegmentView];
    
    [self.view addSubview:self.electricCurrentLabel];
    [self.view addSubview:self.inputelectricCurrentLabel];
    [self.view addSubview:self.electricCurrentLabelUnit];
    [self.view addSubview:self.electricCurrentSegmentView];
    
    
    [self.voltageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(200);
        make.left.equalTo(self.view.mas_left).with.offset(50);
    }];
    
    [self.inputVoltageField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.voltageLabel.mas_right).with.offset(0);
        make.bottom.equalTo(self.voltageLabel.mas_bottom).with.offset(0);
        make.width.mas_equalTo(100);
    }];
    
    [self.voltageLabelUnit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.inputVoltageField.mas_right).with.offset(0);
        make.bottom.equalTo(self.inputVoltageField.mas_bottom).with.offset(0);
    }];
    
    [self.voltageLabelSegmentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.inputVoltageField.mas_right).with.offset(0);
        make.bottom.equalTo(self.inputVoltageField.mas_bottom).with.offset(0);
        make.height.mas_equalTo(1);
    }];
    
    
    [self.capacitanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.voltageLabel.mas_bottom).with.offset(15);
        make.left.equalTo(self.voltageLabel.mas_left).with.offset(0);
    }];

    [self.frequencyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.capacitanceLabel.mas_bottom).with.offset(15);
        make.left.equalTo(self.voltageLabel.mas_left).with.offset(0);
    }];
    
    [self.electricCurrentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.frequencyLabel.mas_bottom).with.offset(15);
        make.left.equalTo(self.voltageLabel.mas_left).with.offset(0);
    }];
    
    
   
}



#pragma mark layze
- (UILabel *)voltageLabel
{
    if (!_voltageLabel) {
        _voltageLabel = [[UILabel alloc] init];
        _voltageLabel.font = [UIFont systemFontOfSize:custFontSize];
        _voltageLabel.text = @"电压(V) = ";
    }
    return _voltageLabel;
}

- (UILabel *)voltageLabelSegmentView
{
    if (!_voltageLabelSegmentView) {
        _voltageLabelSegmentView = [[UILabel alloc] init];
        _voltageLabelSegmentView.backgroundColor = [UIColor blackColor];
    }
    return _voltageLabelSegmentView;
}

- (UITextField *)inputVoltageField
{
    if (!_inputVoltageField) {
        _inputVoltageField = [[UITextField alloc] init];
         _inputVoltageField.font = [UIFont systemFontOfSize:custFontSize];
        _inputVoltageField.textAlignment = NSTextAlignmentCenter;
    }
    return _inputVoltageField;
}

- (UILabel *)voltageLabelUnit
{
    if (!_voltageLabelUnit) {
        _voltageLabelUnit = [[UILabel alloc] init];
        _voltageLabelUnit.font = [UIFont systemFontOfSize:custFontSize];
        _voltageLabelUnit.text = @"KV";
    }
    return _voltageLabelUnit;
}

- (UILabel *)capacitanceLabel
{
    if (!_capacitanceLabel) {
        _capacitanceLabel = [[UILabel alloc] init];
        _capacitanceLabel.font = [UIFont systemFontOfSize:custFontSize];
        _capacitanceLabel.text = @"电容(C) = ";
    }
    return _capacitanceLabel;
}

- (UILabel *)capacitanceSegmentView
{
    if (!_capacitanceSegmentView) {
        _capacitanceSegmentView = [[UILabel alloc] init];
        _capacitanceSegmentView.backgroundColor = [UIColor blackColor];
    }
    return _capacitanceSegmentView;
}
- (UITextField *)inputCapacitanceField
{
    if (!_inputCapacitanceField) {
        _inputCapacitanceField = [[UITextField alloc] init];
        _inputCapacitanceField.font = [UIFont systemFontOfSize:custFontSize];
        _inputCapacitanceField.textAlignment = NSTextAlignmentCenter;
    }
    return _inputCapacitanceField;
}

- (UILabel *)capacitanceLabelUnit
{
    if (!_capacitanceLabelUnit) {
        _capacitanceLabelUnit = [[UILabel alloc] init];
        _capacitanceLabelUnit.font = [UIFont systemFontOfSize:custFontSize];
        _capacitanceLabelUnit.text = @"UF";
    }
    return _capacitanceLabelUnit;
}

- (UITextField *)inputFrequencyField
{
    if (!_inputFrequencyField) {
        _inputFrequencyField = [[UITextField alloc] init];
        _inputFrequencyField.font = [UIFont systemFontOfSize:custFontSize];
        _inputFrequencyField.textAlignment = NSTextAlignmentCenter;
    }
    return _inputFrequencyField;
}

- (UILabel *)frequencySegmentView
{
    if (!_frequencySegmentView) {
        _frequencySegmentView = [[UILabel alloc] init];
        _frequencySegmentView.backgroundColor = [UIColor blackColor];
    }
    return _frequencySegmentView;
}

- (UILabel *)frequencyLabel
{
    if (!_frequencyLabel) {
        _frequencyLabel = [[UILabel alloc] init];
        _frequencyLabel.font = [UIFont systemFontOfSize:custFontSize];
        _frequencyLabel.text = @"频率(F) = ";
    }
    return _frequencyLabel;
}

- (UILabel *)frequencyLabelUnit
{
    if (!_frequencyLabelUnit) {
        _frequencyLabelUnit = [[UILabel alloc] init];
        _frequencyLabelUnit.font = [UIFont systemFontOfSize:custFontSize];
        _frequencyLabelUnit.text = @"HZ";
    }
    return _frequencyLabelUnit;
}

/*
 @property (nonatomic, strong) UILabel *electricCurrentLabel;//频率
 @property (nonatomic, strong) UILabel *inputelectricCurrentLabel;
 @property (nonatomic, strong) UILabel *electricCurrentLabelUnit;//频率单位
 */
- (UILabel *)electricCurrentLabel
{
    if (!_electricCurrentLabel) {
        _electricCurrentLabel = [[UILabel alloc] init];
        _electricCurrentLabel.font = [UIFont systemFontOfSize:custFontSize];
        _electricCurrentLabel.text = @"电流(I) = ";
    }
    return _electricCurrentLabel;
}
- (UILabel *)electricCurrentSegmentView
{
    if (!_electricCurrentSegmentView) {
        _electricCurrentSegmentView = [[UILabel alloc] init];
        _electricCurrentSegmentView.backgroundColor = [UIColor blackColor];
    }
    return _electricCurrentSegmentView;
}

- (UILabel *)inputelectricCurrentLabel
{
    if (!_inputelectricCurrentLabel) {
        _inputelectricCurrentLabel = [[UILabel alloc] init];
        _inputelectricCurrentLabel.font = [UIFont systemFontOfSize:custFontSize];
        _inputelectricCurrentLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _inputelectricCurrentLabel;
}

- (UILabel *)electricCurrentLabelUnit
{
    if (!_electricCurrentLabelUnit) {
        _electricCurrentLabelUnit = [[UILabel alloc] init];
        _electricCurrentLabelUnit.font = [UIFont systemFontOfSize:custFontSize];
        _electricCurrentLabelUnit.text = @"A";
    }
    return _electricCurrentLabelUnit;
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
