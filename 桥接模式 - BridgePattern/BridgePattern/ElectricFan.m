//
//  ElectricFan.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  抽象类的普通类
//  电风扇

#import "ElectricFan.h"

@implementation ElectricFan

- (void)startWind {
    [super powerOn:PowerPointTypeTwo];
    NSLog(@"开始吹风");
}

@end
