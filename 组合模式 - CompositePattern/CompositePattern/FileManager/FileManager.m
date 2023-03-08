//
//  FileManager.m
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import "FileManager.h"
#import "File.h"
#import "Folder.h"

@implementation FileManager

+ (instancetype)manager {
    static FileManager *manager;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        manager = [[FileManager alloc] init];
    });
    return manager;
}

+ (File *)createFileWithName:(NSString *)name {
    File *file    = [[File alloc] init];
    file.name     = name;
    return file;
}

+ (Folder *)createFolderWithName:(NSString *)name {
    Folder *folder = [[Folder alloc] init];
    folder.name = name;
    return folder;
}

@end
