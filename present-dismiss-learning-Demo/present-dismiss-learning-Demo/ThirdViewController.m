//
//  ThirdViewController.m
//  present-dismiss-learning-Demo
//
//  Created by Kevin.J on 2019/6/6.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ThirdViewController ()

@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.presentButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
    [self.view addSubview:_presentButton];
    
    [_presentButton setBackgroundColor:[UIColor blueColor]];
    [_presentButton setTitle:@"第三个" forState:UIControlStateNormal];
    [_presentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_presentButton addTarget:self action:@selector(touchDismiss) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchDismiss {
    [self.secondViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
