//
//  RiceCooker.m
//  BridgePattern
//
//  Created by Murphy on 2023/3/7.
//
//  抽象类的普通类
//  电饭锅

#import "RiceCooker.h"

@implementation RiceCooker

- (void)startCookRice {
    [super powerOn:PowerPointTypeTwo];
    NSLog(@"开始煮饭");
}

@end
