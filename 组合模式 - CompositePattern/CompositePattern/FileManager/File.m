//
//  File.m
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import "File.h"

@interface File ()


@end

@implementation File

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fileType = FileTypeFile;
    }
    return self;
}


@end
