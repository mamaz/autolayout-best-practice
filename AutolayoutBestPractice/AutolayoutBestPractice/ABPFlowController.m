//
//  ABPFlowController.m
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import "ABPFlowController.h"
#import "ABPXIBExampleViewController.h"
#import "ABPAutolayoutMasonryExample.h"
#import "ABPAutolayoutAnimationExample.h"

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
    UIViewController *example;
    switch (index) {
        case 0:
            example = [[ABPXIBExampleViewController alloc]
                        initWithNibName:NSStringFromClass([ABPXIBExampleViewController class])
                                 bundle:nil];
            break;
        case 1:
            example = [ABPAutolayoutMasonryExample new];
            break;

        case 2:
            example = [ABPAutolayoutAnimationExample new];
            break;

        default:
            break;
    }

    [self.navigationController pushViewController:example
                                         animated:YES];
}

@end
