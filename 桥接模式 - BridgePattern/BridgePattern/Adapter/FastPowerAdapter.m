//
//  FastPowerAdapter.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "FastPowerAdapter.h"
#import "PowerPointImplementor.h"



@implementation FastPowerAdapter

- (void)connectToLine:(PowerLineType)lineType {
    NSLog(@"使用 %@ 线 连接手机与充电器",self.lineTypeDic[@(lineType)]);
    if (self.point) {
        [self.point connectedThePowerPoint:PowerPointTypeTwo];
    }
}

- (void)startCharging:(PowerProtocol)protocol {
    NSLog(@"开始以 %@ 的速率充电",protocol);
}

- (NSDictionary *)lineTypeDic {
    return @{
        @(PowerLineTypeCToL) : @"Type-C to Lightning",
        @(PowerLineTypeBToL) : @"USB to Lightning",
        @(PowerLineTypeCToC) : @"Type-C to Type-C",
    };
}

- (NSArray *)chargingProtocolList {
    return @[
        @"10w",
        @"30w",
        @"60w",
        @"100w",
    ];
}

@end
