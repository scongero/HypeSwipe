//
//  SplashViewController.m
//  HypeSwipe
//
//  Created by Rahul Madduluri on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *splash = [UIImage imageNamed:@"player_screen_0002_Layer-1.png"];
    self.splashScreenView = [[UIImageView alloc] initWithImage:splash];
    
    UIImage *yahooLogo = [UIImage imageNamed:@"player_screen_0002_Layer-5.png"];
    
    self.yahooLogo = [[UIImageView alloc] initWithImage:yahooLogo];
    self.yahooLogo.frame = CGRectMake(121, 317, 77, 74);
    
    [self.splashScreenView addSubview:self.yahooLogo];
    
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (UIUserInterfaceIdiomPhone)
    {
        self.logo1.frame = CGRectMake(10, 40, 22, 22);
        self.logo2.frame = CGRectMake(50, 400, 16, 16);
        self.logo3.frame = CGRectMake(400, 0, 14, 14);
        self.logo4.frame = CGRectMake(300, 380, 24, 24);
        
        
    }
    else
    {
        
        self.logo1.frame = CGRectMake(100, 40, 22, 22);
        self.logo2.frame = CGRectMake(150, 500, 16, 16);
        self.logo3.frame = CGRectMake(800, -200, 14, 14);
        self.logo4.frame = CGRectMake(1100, 1000, 28, 28);
        
    }
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.5];
    [UIView setAnimationDelegate:self];
    
    float splash_centerX;
    float splash_centerY;
    
    splash_centerX=120;
    splash_centerY=199;
    
    self.logo1.center = CGPointMake(splash_centerX, splash_centerY);
    self.logo2.center = CGPointMake(splash_centerX, splash_centerY);
    self.logo3.center = CGPointMake(splash_centerX, splash_centerY);
    self.logo4.center = CGPointMake(splash_centerX, splash_centerY);
    
    self.logo1.alpha = 1.0;
    self.logo2.alpha = 1.0;
    self.logo3.alpha = 1.0;
    self.logo4.alpha = 1.0;
    
    [self.splashScreenView addSubview:self.logo1];
    [self.splashScreenView addSubview:self.logo2];
    [self.splashScreenView addSubview:self.logo3];
    [self.splashScreenView addSubview:self.logo4];
    
    [UIView setAnimationDidStopSelector:@selector(supernovaAnimationDidStop:finished:context:)];
    
    [UIView commitAnimations];
    
    [self.view addSubview:self.splashScreenView];
    
    
}

-(void)splashAnimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context
{
    CATransition *transition = [CATransition animation];
    transition.duration = 4.0;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    
    [self.splashScreenView.layer addAnimation:transition forKey:nil];
    
    //Begin animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    self.logo1.alpha=0;
    self.logo2.alpha=0;
    self.logo3.alpha=0;
    self.logo4.alpha=0;
    
    [UIView commitAnimations];
    
    //Segue
    //[self performSegueWithIdentifier:@"SplashScreen2LoginSegue" sender:self];
}
@end
