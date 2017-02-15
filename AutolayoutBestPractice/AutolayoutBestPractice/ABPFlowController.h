//
//  ABPFlowController.h
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UINavigationController;

@interface ABPFlowController : NSObject

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (void)gotoScreenWithIndex:(NSInteger)index;

@end
