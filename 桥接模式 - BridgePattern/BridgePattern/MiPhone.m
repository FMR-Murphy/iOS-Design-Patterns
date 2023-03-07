//
//  MiPhone.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "MiPhone.h"

@implementation MiPhone

- (void)betteryCharging:(PowerLineType)lineType {
    
    self.powerAdapter.point = self.powerPoint;
    
    [self.powerAdapter connectToLine:lineType];
    
    [super powerOn:PowerPointTypeTwo];
    
    PowerProtocol protocol = [self matchCharging];
    [self.powerAdapter startCharging:protocol];
}



/// 匹配充电速率
- (PowerProtocol)matchCharging {
    NSArray<PowerProtocol> *chargingArray = self.powerAdapter.chargingProtocolList;
    
    PowerProtocol protocol;
    for (PowerProtocol p in [self powerProtocol]) {
        if ([chargingArray containsObject:p]) {
            protocol = p;
            break;
        }
    }
    return protocol;
}

- (NSArray<PowerProtocol> *)powerProtocol {
    return @[
        @"100w",
        @"30w",
        @"10w",
    ];
}

@end
