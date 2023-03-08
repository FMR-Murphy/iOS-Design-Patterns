//
//  Folder.m
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import "Folder.h"

@interface Folder ()

@property (nonatomic, strong) NSMutableArray <id<FileProtocol>> *filesArray;

@end

@implementation Folder

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.filesArray = [NSMutableArray array];
        self.fileType = FileTypeFolder;
    }
    return self;
}

- (void)add:(id<FileProtocol>)file {
    [self.filesArray addObject:file];
}

- (NSArray<id<FileProtocol>> *)files {
    return self.filesArray;
}



@end
