//
//  ABPAutolayoutMasonryExample.m
//  AutolayoutBestPractice
//
//  Created by Hisma Mulya S on 2/15/17.
//  Copyright © 2017 mamaz. All rights reserved.
//

#import "ABPAutolayoutMasonryExample.h"

#import <Masonry/Masonry.h>
#import <SDWebImage/UIImageView+WebCache.h>

static NSString *const kUrl = @"https://cdnb.artstation.com/p/assets/images/images/001/147/237/large/randall-whiteis-motoko.jpg?1441038499";
static CGFloat const kWidth = 200.0f;
static CGFloat const kHeight = 300.0f;

@interface ABPAutolayoutMasonryExample ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ABPAutolayoutMasonryExample

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self setUpPictureOriginal];
    [self setUpPictureVisualFormat];
    [self setUpPictureWithMasonry];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setUpPictureOriginal
{
    self.imageView = [UIImageView new];
    self.imageView.backgroundColor = [UIColor grayColor];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.imageView];

    NSURL *url = [NSURL URLWithString:kUrl];
    [self.imageView sd_setImageWithURL:url placeholderImage:nil];

    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint
                                          constraintWithItem:self.imageView
                                          attribute:NSLayoutAttributeWidth
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:nil
                                          attribute:NSLayoutAttributeNotAnAttribute
                                         multiplier:1
                                           constant:kWidth];

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint
                                            constraintWithItem:self.imageView
                                            attribute:NSLayoutAttributeHeight
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:nil
                                            attribute:NSLayoutAttributeNotAnAttribute
                                            multiplier:1
                                            constant:kHeight];

    NSLayoutConstraint *centerX = [NSLayoutConstraint
                                   constraintWithItem:self.imageView
                                   attribute:NSLayoutAttributeCenterX
                                   relatedBy:NSLayoutRelationEqual
                                      toItem:self.view
                                   attribute:NSLayoutAttributeCenterX
                                  multiplier:1
                                    constant:0.0];

    NSLayoutConstraint *centerY = [NSLayoutConstraint
                                   constraintWithItem:self.imageView
                                   attribute:NSLayoutAttributeCenterY
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:self.view
                                   attribute:NSLayoutAttributeCenterY
                                   multiplier:1
                                   constant:0.0];

    [self.view addConstraints:@[
        widthConstraint,
        heightConstraint,
        centerX,
        centerY
    ]];
}

- (void)setUpPictureVisualFormat
{
    self.imageView = [UIImageView new];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.imageView];

    NSURL *url = [NSURL URLWithString:kUrl];
    [self.imageView sd_setImageWithURL:url placeholderImage:nil];

    NSDictionary *views = @{
        @"view": self.view,
        @"imageView": self.imageView
    };
    NSDictionary *metrics = @{
        @"kWidth": @(kWidth),
        @"kHeight": @(kHeight)
    };

    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-(<=1)-[imageView(kHeight)]"
                                                                           options:NSLayoutFormatAlignAllCenterX
                                                                           metrics:metrics
                                                                             views:views];

    NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[view]-(<=1)-[imageView(kWidth)]"
                                                                             options:NSLayoutFormatAlignAllCenterY
                                                                             metrics:metrics
                                                                               views:views];
    NSMutableArray *combined = [[NSMutableArray alloc]initWithArray:verticalConstraints];
    [combined addObjectsFromArray:horizontalConstraints];;
    [self.view addConstraints:combined];
}

- (void)setUpPictureWithMasonry
{
    self.imageView = [UIImageView new];
    [self.view addSubview:self.imageView];

    NSURL *url = [NSURL URLWithString:kUrl];
    [self.imageView sd_setImageWithURL:url
                      placeholderImage:nil];

    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(kWidth);
        make.height.mas_equalTo(kHeight);
        make.center.mas_equalTo(self.view);
    }];
}

@end
