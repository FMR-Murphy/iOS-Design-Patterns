//
//  ApplianceAbstraction.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "ApplianceAbstraction.h"

@implementation ApplianceAbstraction

- (void)powerOn:(PowerPointType)pointType {
    [self.powerPoint connectedThePowerPoint:pointType];
    [self.powerPoint startPowerSupply];
}

@end
