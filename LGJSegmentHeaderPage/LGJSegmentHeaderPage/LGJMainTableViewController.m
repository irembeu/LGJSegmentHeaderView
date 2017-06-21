//
//  LGJMainTableViewController.m
//  LGJSegmentHeaderPage
//
//  Created by 劉光軍 on 2017/6/20.
//  Copyright © 2017年 劉光軍. All rights reserved.
//

#import "LGJMainTableViewController.h"
#import "LGJMainViewController.h"

@interface LGJMainTableViewController ()

{
    NSArray *styleList;
    NSArray *layoutList;
}

@end

@implementation LGJMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MainTableViewController";
    styleList = @[
                  @"SegmentHeadStyleDefault",
                  @"SegmentHeadStyleLine",
                  @"SegmentHeadStyleArrow",
                  @"SegmentHeadStyleSlide"
                  ];
    
    layoutList = @[
                   @"LGJSegmentLayoutDefault",
                   @"LGJSegmentLayoutCenter",
                   @"LGJSegmentLayoutLeft"
                   ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return layoutList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return styleList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"reuseIdentifier"];
    }
    cell.textLabel.text = styleList[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LGJMainViewController *vc = [LGJMainViewController new];
    vc.style = indexPath.row;
    vc.layout = indexPath.section;
    vc.title = styleList[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
    label.text = layoutList[section];
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

@end
