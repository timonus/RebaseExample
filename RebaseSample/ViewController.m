//
//  ViewController.m
//  RebaseSample
//
//  Created by Tim Johnsen on 10/7/14.
//  Copyright (c) 2014 flipboard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *pulsingBackgroundView1;
@property (nonatomic, strong) UIView *pulsingBackgroundView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pulsingBackgroundView1 = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.pulsingBackgroundView1];
    
    self.pulsingBackgroundView2 = [[UIView alloc] initWithFrame:self.view.bounds];
    self.pulsingBackgroundView2.alpha = 0.0;
    [self.view addSubview:self.pulsingBackgroundView2];
    
    [self transition];
}

- (void)transition
{
    UIColor *randomColor = [UIColor colorWithRed:arc4random_uniform(1000) / 1000.0 green:arc4random_uniform(1000) / 1000.0 blue:arc4random_uniform(1000) / 1000.0 alpha:1.0];
    if (self.pulsingBackgroundView2.alpha == 0.0) {
        self.pulsingBackgroundView2.backgroundColor = randomColor;
        [UIView animateWithDuration:1.0 animations:^{
            self.pulsingBackgroundView2.alpha = 1.0;
        }];
    } else {
        self.pulsingBackgroundView1.backgroundColor = randomColor;
        [UIView animateWithDuration:1.0 animations:^{
            self.pulsingBackgroundView2.alpha = 0.0;
        }];
    }
    
    __weak ViewController *weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf transition];
    });
}

@end
