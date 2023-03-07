//
//  RiceCooker.h
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  抽象类的普通类
//  电饭锅

#import "ApplianceAbstraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface RiceCooker : ApplianceAbstraction

/// 开始煮饭
- (void)startCookRice;

@end

NS_ASSUME_NONNULL_END
