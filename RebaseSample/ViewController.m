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


@end
