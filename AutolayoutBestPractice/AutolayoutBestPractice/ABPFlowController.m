//
//  ABPFlowController.m
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import "ABPFlowController.h"
#import "ABPXIBExampleViewController.h"

#import <UIKit/UIKit.h>

@interface ABPFlowController ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation ABPFlowController

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
        _navigationController = navigationController;
    }

    return self;
}

- (void)gotoScreenWithIndex:(NSInteger)index
{
    switch (index) {
        case 0:
        {
            ABPXIBExampleViewController *example = [[ABPXIBExampleViewController alloc]
                                                    initWithNibName:NSStringFromClass([ABPXIBExampleViewController class])
                                                             bundle:nil];
            [self.navigationController pushViewController:example
                                                 animated:YES];
            break;
        }
        case 1:
        {

            break;
        }
        case 2:

        default:
            break;
    }
}

@end
