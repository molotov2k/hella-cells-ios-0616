//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Max Tkach on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"

@implementation FISHellaDetailViewController

- (void) viewDidLoad {
    self.numberLabel.text = self.numberToDisplay;
    self.numberLabel.accessibilityLabel = @"bigNumber";
}

@end
