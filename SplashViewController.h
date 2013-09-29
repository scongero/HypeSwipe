//
//  SplashViewController.h
//  HypeSwipe
//
//  Created by Rahul Madduluri on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
////

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SplashViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *logo1;
@property (weak, nonatomic) IBOutlet UIImageView *logo2;
@property (weak, nonatomic) IBOutlet UIImageView *logo3;
@property (weak, nonatomic) IBOutlet UIImageView *logo4;




@property (nonatomic,strong) IBOutlet UIImageView *splashScreenView;
@property (strong, nonatomic) IBOutlet UIImageView *yahooLogo;

- (void)splashAnimationDidStop:(NSString *)animationID finished: (NSNumber *)finished context:(void *)context;




@end
