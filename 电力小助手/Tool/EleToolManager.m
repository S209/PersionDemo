//
//  EleToolManager.m
//  电力小助手
//
//  Created by tuhaisheng on 2018/10/8.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "EleToolManager.h"

@implementation EleToolManager
+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    static EleToolManager *instance ;
    dispatch_once(&onceToken, ^{
        instance = [[EleToolManager alloc] init];
    });
    return instance;
}

//2*π*f*U*C/1000
+ (CGFloat)calculateElectricCurrentWithVoltage:(CGFloat)voltage capacitance:(CGFloat)capacitance frequency:(CGFloat)frequency
{
    return 2*3.14*voltage*capacitance*frequency/1000.0;
}

//1000/(2*π*√(l*c))
+ (CGFloat)calculateFrequencyWithInductance:(CGFloat)inductance capacitance:(CGFloat)capacitance
{
    return 1000/(2*3.14*sqrtf(inductance*capacitance));
}
@end
