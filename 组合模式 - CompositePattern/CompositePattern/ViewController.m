//
//  ViewController.m
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import "ViewController.h"
#import "FileManager.h"
#import "File.h"
#import "Folder.h"
#import "FileViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initRootFile];
}

- (void)initRootFile {
    FileManager *manager = [FileManager manager];
    manager.rootFile = [FileManager createFolderWithName:@"RootFolder"];
    // 创建根节点
    
    // 创建文件夹 A , B, C
    Folder *A = [FileManager createFolderWithName:@"A"];
    Folder *B = [FileManager createFolderWithName:@"B"];
    Folder *C = [FileManager createFolderWithName:@"C"];
    
    Folder *a_1 = [FileManager createFolderWithName:@"a_1"];
    Folder *a_2 = [FileManager createFolderWithName:@"a_2"];
    File *a_3 = [FileManager createFileWithName:@"a_3"];
    Folder *a_4 = [FileManager createFolderWithName:@"a_4"];
    [A add:a_1];
    [A add:a_2];
    [A add:a_3];
    [A add:a_4];
    
    [a_1 add:[FileManager createFolderWithName:@"a_1_1"]];
    [a_1 add:[FileManager createFileWithName:@"a_1_2"]];
    [a_1 add:[FileManager createFileWithName:@"a_1_3"]];
    
    // 创建文件 D
    File *D = [FileManager createFileWithName:@"D"];
    
    // 添加文件
    [manager.rootFile add:A];
    [manager.rootFile add:B];
    [manager.rootFile add:C];
    [manager.rootFile add:D];
    
}


- (IBAction)buttonEvent:(UIButton *)sender {
    FileViewController * fileVC = [[FileViewController alloc] init];
    fileVC.rootFile = [FileManager manager].rootFile;
    [self.navigationController pushViewController:fileVC animated:YES];
}

@end
