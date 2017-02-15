//
//  ABPMainViewController.m
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import "ABPMainViewController.h"
#import "ABPFlowController.h"

@interface ABPMainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) ABPFlowController *flowController;

@end

@implementation ABPMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"MainView";
    self.view.backgroundColor = [UIColor whiteColor];

    self.flowController = [[ABPFlowController alloc]
                           initWithNavigationController:self.navigationController];;

    [self setupTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupTable
{
    self.tableView = [UITableView new];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.frame = self.view.frame;
    [self.view addSubview:self.tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];


    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }

    NSString *cellText = @"";
    switch (indexPath.row) {
        case 0:
            cellText = @"XIB Example";
            break;
        case 1:
            cellText = @"Masonry Example";
            break;
        case 2:
            cellText = @"Autolayout Animating";
            break;

        default:
            break;
    }

    cell.textLabel.text = cellText;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.flowController gotoScreenWithIndex:indexPath.row];
}

@end
