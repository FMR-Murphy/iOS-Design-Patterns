//
//  ApplianceAbstraction.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//

#import <Foundation/Foundation.h>

#import "PowerPointImplementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApplianceAbstraction : NSObject

@property (nonatomic) PowerPointImplementor *powerPoint;

/// 链接电源线，开始工作
- (void)powerOn:(PowerPointType)lineType;

@end

NS_ASSUME_NONNULL_END
