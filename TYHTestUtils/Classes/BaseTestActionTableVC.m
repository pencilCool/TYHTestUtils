//
//  BaseActionTableVC.m
//  SanyLocalPodDemo
//
//  Created by yuhua Tang on 2021/9/16.
//

#import "BaseTestActionTableVC.h"
@interface BaseTestActionTableVC ()
@property (nonatomic,strong) NSMutableArray *titles;
@property (nonatomic,strong) NSMutableArray *actions;
@end

@implementation BaseTestActionTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titles = @[].mutableCopy;
    self.actions= @[].mutableCopy;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"mycell"];
    
}


- (void)addCell:(NSString *)title action:(void(^)(void))action{
    NSParameterAssert(title != nil);
    NSParameterAssert(action != nil);
    [self.titles addObject:title];
    [self.actions addObject:action];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titles.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell" forIndexPath:indexPath];
    NSString *title = self.titles[indexPath.row];
    
    if (indexPath.row % 2) {
        cell.textLabel.textColor = [UIColor blueColor];
    } else {
        cell.textLabel.textColor = [UIColor blackColor];
    }
    if ([title containsString:@"**"]) {
        cell.textLabel.textColor = [UIColor redColor];
    }
    cell.textLabel.text = title;
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    void (^action)(void) = self.actions[indexPath.row];
    action();
}


@end
