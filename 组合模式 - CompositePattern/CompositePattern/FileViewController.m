//
//  FileViewController.m
//  CompositePattern
//
//  Created by Murphy on 2023/3/8.
//

#import "FileViewController.h"
#import "File.h"


@interface FileViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) UITableView *tableView;

@end

@implementation FileViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = self.rootFile.name;
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.rootFile.fileType == FileTypeFolder) {
        return self.rootFile.files.count;
    } else {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fileCell"];
    id<FileProtocol> file = self.rootFile.files[indexPath.row];
    
    UIListContentConfiguration *configuration = [UIListContentConfiguration cellConfiguration];
    configuration.image = [UIImage imageNamed:file.fileType == FileTypeFolder ? @"Folder" : @"File"];
    configuration.text = file.name;
    cell.contentConfiguration = configuration;
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id<FileProtocol> file = self.rootFile.files[indexPath.row];
    
    if (file.fileType == FileTypeFolder) {
        return;
    }
    FileViewController *fView = [[FileViewController alloc] init];
    fView.rootFile = file;
    [self.navigationController pushViewController:fView animated:YES];
}

#pragma mark - lazy
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.rowHeight = 80;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"fileCell"];
    }
    return _tableView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
