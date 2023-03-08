//
//  Folder.h
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//
/**
 树枝构件类（Composite）：代表参加组合的有下级子对象的对象。给出所有管理子对象的方法
 */

#import <Foundation/Foundation.h>
#import "FileProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Folder : NSObject <FileProtocol>

/// 文件类型
@property (nonatomic) FileType fileType;

/// 文件夹或者文件的名字
@property (nonatomic) NSString  *name;

/// 添加文件
- (void)add:(id<FileProtocol>)file;

///  所有文件
- (NSArray <id<FileProtocol>> * _Nullable)files;


@end

NS_ASSUME_NONNULL_END
