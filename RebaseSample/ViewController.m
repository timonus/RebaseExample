//
//  ViewController.m
//  RebaseSample
//
//  Created by Tim Johnsen on 10/7/14.
//  Copyright (c) 2014 flipboard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(20.0, CGRectGetMaxY(self.view.bounds) - 20.0 - 44.0, CGRectGetWidth(self.view.bounds) - 40.0, 44.0)];
    [self.button setTitle:@"Give me cats" forState:UIControlStateNormal];
    UIColor *actionColor = [UIColor purpleColor];
    self.button.layer.cornerRadius = 4.0;
    self.button.layer.borderWidth = 1.0 / [[UIScreen mainScreen] scale];
    self.button.layer.borderColor = [actionColor CGColor];
    [self.button setTitleColor:actionColor forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(showCatPicture:) forControlEvents:UIControlEventTouchUpInside];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20.0, 40.0, CGRectGetWidth(self.view.bounds) - 40.0, CGRectGetMinY(self.button.frame) - 40.0 - 20.0)];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
