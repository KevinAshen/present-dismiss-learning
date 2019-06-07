//
//  FirstViewController.m
//  present-dismiss-learning-Demo
//
//  Created by Kevin.J on 2019/6/6.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *presentButton;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.presentButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
    [self.view addSubview:_presentButton];
    
    [_presentButton setBackgroundColor:[UIColor blueColor]];
    [_presentButton setTitle:@"第一个" forState:UIControlStateNormal];
    [_presentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_presentButton addTarget:self action:@selector(touchPresent) forControlEvents:UIControlEventTouchUpInside];
}



- (void)touchPresent {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    secondViewController.firstViewController = self;
    NSLog(@"self--%p--", self);
    NSLog(@"next--%p--", secondViewController);
    NSLog(@"BeforeA:self.presentedViewController--%p--", self.presentedViewController);
    NSLog(@"BeforeA:self.presentingViewController--%p--", self.presentingViewController);
    [self presentViewController:secondViewController animated:YES completion:nil];
    NSLog(@"LaterA:self.presentedViewController--%p--", self.presentedViewController);
    NSLog(@"LaterA:self.presentingViewController--%p--", self.presentingViewController);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
