//
//  FileViewController.h
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import <UIKit/UIKit.h>
#import "FileProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@interface FileViewController : UIViewController

@property (nonatomic, nullable) id<FileProtocol> rootFile;

@end

NS_ASSUME_NONNULL_END
