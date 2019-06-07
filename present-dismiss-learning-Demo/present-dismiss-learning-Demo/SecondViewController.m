//
//  SecondViewController.m
//  present-dismiss-learning-Demo
//
//  Created by Kevin.J on 2019/6/6.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()


@property (nonatomic, strong) UIButton *presentButton;

@property (nonatomic, strong) UIButton *dismissButton;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.presentButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
    [self.view addSubview:_presentButton];
    
    [_presentButton setBackgroundColor:[UIColor blueColor]];
    [_presentButton setTitle:@"第二个" forState:UIControlStateNormal];
    [_presentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_presentButton addTarget:self action:@selector(touchPresent) forControlEvents:UIControlEventTouchUpInside];
    
    self.dismissButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 450, 100, 100)];
    [self.view addSubview:_dismissButton];
    
    [_dismissButton setBackgroundColor:[UIColor blueColor]];
    [_dismissButton setTitle:@"返回" forState:UIControlStateNormal];
    [_dismissButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_dismissButton addTarget:self action:@selector(touchDismiss) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchDismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchPresent {
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    thirdViewController.firstViewController = self.firstViewController;
    thirdViewController.secondViewController = self;
    NSLog(@"self--%p--", self);
    NSLog(@"next--%p--", thirdViewController);
    NSLog(@"BeforeB:self.presentedViewController--%p--", self.presentedViewController);
    NSLog(@"BeforeB:self.presentingViewController--%p--", self.presentingViewController);
    [self presentViewController:thirdViewController animated:YES completion:nil];
    NSLog(@"LaterB:self.presentedViewController--%p--", self.presentedViewController);
    NSLog(@"LaterB:self.presentingViewController--%p--", self.presentingViewController);
}


@end
