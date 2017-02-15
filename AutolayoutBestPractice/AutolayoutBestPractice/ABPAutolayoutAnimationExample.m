//
//  ABPAutolayoutAnimationExample.m
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import "ABPAutolayoutAnimationExample.h"
#import "Constants.h"

#import <Masonry/Masonry.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface ABPAutolayoutAnimationExample ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ABPAutolayoutAnimationExample

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];


    self.imageView = [UIImageView new];
    [self.view addSubview:self.imageView];

    self.imageView.alpha  = 0.0f;

    NSURL *url = [NSURL URLWithString:kUrl];
    [self.imageView sd_setImageWithURL:url
                      placeholderImage:nil];

    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(kWidth);
        make.height.mas_equalTo(kHeight);
        make.center.mas_equalTo(self.view);
    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [UIView animateWithDuration:2.0 animations:^{

        // first showing animation
        self.imageView.alpha = 1.0f;
        [self.view layoutIfNeeded];

    } completion:^(BOOL finished) {
        // disappearing animation
        [self.view layoutIfNeeded];

        // remake constraints
        [self.imageView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(kWidth);
            make.height.mas_equalTo(kHeight);
            make.center.mas_equalTo(self.view).centerOffset(CGPointMake(0, 500));
        }];

        [UIView animateWithDuration:1.0 animations:^{
            self.imageView.alpha = 0.0f;
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self.imageView removeFromSuperview];
        }];

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
