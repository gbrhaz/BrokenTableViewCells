//
//  ViewController.m
//  BrokenCells
//
//  Created by Harry Richardson on 05/03/2015.
//  Copyright (c) 2015 Harry Richardson. All rights reserved.
//

#import "ViewController.h"
#import "BrokenCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *activityCellNib = [UINib nibWithNibName:@"BrokenCell" bundle:nil];
    [self.tableView registerNib:activityCellNib forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BrokenCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    static BrokenCell *prototypeCell;
    prototypeCell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
    prototypeCell.bounds = CGRectMake(0,
                                      0,
                                      CGRectGetWidth(self.tableView.bounds),
                                      CGRectGetHeight(prototypeCell.bounds));
    [prototypeCell layoutIfNeeded];
    CGSize size = [prototypeCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height+1;
}

@end
