//
//  ThirdViewController.h
//  present-dismiss-learning-Demo
//
//  Created by Kevin.J on 2019/6/6.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FirstViewController;
@class SecondViewController;

NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController

@property (nonatomic, strong) FirstViewController *firstViewController;
@property (nonatomic, strong) SecondViewController *secondViewController;

@end

NS_ASSUME_NONNULL_END
