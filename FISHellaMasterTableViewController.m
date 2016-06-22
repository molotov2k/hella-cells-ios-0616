//
//  FISHellaMasterViewController.m
//  HellaCells
//
//  Created by Max Tkach on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"

@implementation FISHellaMasterTableViewController

- (void) viewDidLoad {
    self.tableView.accessibilityIdentifier = @"Table";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row + 1];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISHellaDetailViewController *controller = (FISHellaDetailViewController *)segue.destinationViewController;
    UILabel *label = (UILabel *)sender;
    controller.numberToDisplay = label.text;
}

@end
