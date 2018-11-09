//
//  EleTool.h
//  电力小助手
//
//  Created by tuhaisheng on 2018/10/8.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface EleToolManager : NSObject
+ (instancetype)shareInstance;

/**
计算电流
 @param voltage 电压
 @param capacitance 电容
 @param frequency 评率
 @return 电流
 */
+ (CGFloat)calculateElectricCurrentWithVoltage:(CGFloat)voltage capacitance:(CGFloat)capacitance frequency:(CGFloat)frequency;


/**
 计算频率

 @param inductance 电感
 @param capacitance 电容
 @return 频率
 */
+ (CGFloat)calculateFrequencyWithInductance:(CGFloat)inductance capacitance:(CGFloat)capacitance;
@end

