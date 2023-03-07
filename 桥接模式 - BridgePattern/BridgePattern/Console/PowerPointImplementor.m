//
//  PowerPointImplementor.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  实现类的接口类
//  墙上插座

#import "PowerPointImplementor.h"

@implementation PowerPointImplementor

- (void)connectedThePowerPoint:(PowerPointType)PointType {
    
    NSString *typeStr = self.pointTypeDic[@(PointType)];
    NSLog(@"电源线 %@ 连接220V成功",typeStr);
}

- (void)startPowerSupply {
    // 子类重写
}

- (NSDictionary *)pointTypeDic {
    return @{
        @(PowerPointTypeTwo) : @"两头电源线",
        @(PowerPointTypeTree) : @"三头电源线（带地线）",
    };
}

@end
