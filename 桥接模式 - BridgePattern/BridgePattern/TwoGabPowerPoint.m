//
//  TwoGabPowerPoint.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "TwoGabPowerPoint.h"

@implementation TwoGabPowerPoint

- (void)connectedThePowerLine:(PowerPointType)lineType {
    NSLog(@"%@ 插在二孔插座上", [self pointTypeDic][@(lineType)]);
}

- (void)startPowerSupply {
    NSLog(@"二孔插座开始供电");
}

@end
