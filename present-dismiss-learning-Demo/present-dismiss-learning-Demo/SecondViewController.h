//
//  SecondViewController.h
//  present-dismiss-learning-Demo
//
//  Created by Kevin.J on 2019/6/6.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FirstViewController;

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (nonatomic, strong) FirstViewController *firstViewController;

@end

NS_ASSUME_NONNULL_END
