//
//  File.h
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//
/**
 树叶构件类（Leaf），树叶对象没有下级子对象。定义出参加组合的原始对象行为。
 */
#import <Foundation/Foundation.h>
#import "FileProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface File : NSObject <FileProtocol>

/// 文件类型
@property (nonatomic) FileType fileType;

/// 文件夹或者文件的名字
@property (nonatomic) NSString  *name;


@end

NS_ASSUME_NONNULL_END
