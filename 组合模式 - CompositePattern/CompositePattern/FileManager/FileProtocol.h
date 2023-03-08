//
//  FileProtocol.h
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//
/**
 抽象构件（Component）角色。给参加组合的对象定义出公共的接口及其默认行为，用来约束所有的子对象。
 也可用类，通过继承进行实现。
 */

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, FileType) {
    /// 文件夹
    FileTypeFolder  = 0,
    /// 文件
    FileTypeFile,
};

NS_ASSUME_NONNULL_BEGIN



@protocol FileProtocol <NSObject>

@required

/// 文件类型
@property (nonatomic) FileType fileType;

/// 文件夹或者文件的名字
@property (nonatomic, nullable) NSString  *name;

@optional
/// 返回下级所有对象
- (NSArray <id<FileProtocol>> * _Nullable)files;


@end

NS_ASSUME_NONNULL_END
