//
//  PowerAdapterProtocol.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import <Foundation/Foundation.h>
@class PowerPointImplementor;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PowerLineType) {
    /// Type-C to Lightning
    PowerLineTypeCToL,
    /// USB to Lightning
    PowerLineTypeBToL,
    /// Type-C to Type-C,
    PowerLineTypeCToC,
};

typedef NSString * PowerProtocol;

@protocol PowerAdapterProtocol <NSObject>

@required
///插座
@property (nonatomic) PowerPointImplementor *point;

/// 连接数据线
- (void)connectToLine:(PowerLineType)lineType;

/// 支持的充电协议列表
- (NSArray<PowerProtocol> *)chargingProtocolList;

/// 开始充电
- (void)startCharging:(PowerProtocol)protocol;


@end

NS_ASSUME_NONNULL_END
