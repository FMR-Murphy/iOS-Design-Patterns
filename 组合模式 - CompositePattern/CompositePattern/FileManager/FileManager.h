//
//  FileManager.h
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import <Foundation/Foundation.h>
#import "FileProtocol.h"
@class File;
@class Folder;

NS_ASSUME_NONNULL_BEGIN

@interface FileManager : NSObject

/// 根目录
@property (nonatomic) Folder * rootFile;


+ (instancetype)manager;

/// 创建一个文件
+ (File *)createFileWithName:(NSString *)name;
/// 创建一个文件夹
+ (Folder *)createFolderWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
