//
//  ElectricFan.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  抽象类的普通类
//  电风扇

#import "ApplianceAbstraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface ElectricFan : ApplianceAbstraction

/// 开始吹风
- (void)startWind;

@end

NS_ASSUME_NONNULL_END
