//
//  MiPhone.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import "ApplianceAbstraction.h"
#import "PowerAdapterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MiPhone : ApplianceAbstraction

@property (nonatomic, nullable) id<PowerAdapterProtocol> powerAdapter;

- (void)betteryCharging:(PowerLineType)lineType;

@end

NS_ASSUME_NONNULL_END
