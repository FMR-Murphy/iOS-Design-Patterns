//
//  FastPowerAdapter.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import <Foundation/Foundation.h>
#import "PowerAdapterProtocol.h"

@class PowerPointImplementor;

NS_ASSUME_NONNULL_BEGIN



@interface FastPowerAdapter : NSObject <PowerAdapterProtocol>

@property (nonatomic, nullable) PowerPointImplementor *point;

@end

NS_ASSUME_NONNULL_END
