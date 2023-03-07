//
//  PowerLineImplementor.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  实现类的接口类
//  墙上插座

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, PowerPointType) {
    /// 两头电源线
    PowerPointTypeTwo    = 0,
    /// 三头电源线（带地线）
    PowerPointTypeTree,
};

@interface PowerPointImplementor : NSObject

/// 连接电源线
- (void)connectedThePowerPoint:(PowerPointType)PointType;

/// 开始供电
- (void)startPowerSupply;

- (NSDictionary *)pointTypeDic;

@end

NS_ASSUME_NONNULL_END
