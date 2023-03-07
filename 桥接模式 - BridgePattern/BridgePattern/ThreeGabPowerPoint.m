//
//  ThreeGabPowerPoint.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "ThreeGabPowerPoint.h"

@implementation ThreeGabPowerPoint

- (void)connectedThePowerLine:(PowerPointType)lineType {
    NSLog(@"%@ 插在三孔插座上", [self pointTypeDic][@(lineType)]);
}

- (void)startPowerSupply {
    NSLog(@"三孔插座开始供电");
}

@end
