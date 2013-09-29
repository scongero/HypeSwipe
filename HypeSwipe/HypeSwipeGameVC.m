//
//  HypeSwipeGameVC.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "HypeSwipeGameVC.h"

@interface HypeSwipeGameVC ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;


@end

@implementation HypeSwipeGameVC

@synthesize playerViewArray;
@synthesize scrollView;
@synthesize pageControl;








- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.scrollView.frame = CGRectMake(0, 45, 320, 366);
    playerViewArray = [[NSArray alloc] initWithObjects:@"image1.png",@"image2.png", @"image3.png", nil];
    for (int i = 0; i < [playerViewArray count]; i++)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width *i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        self.photoView.frame = frame;
        self.photoView.image = [UIImage imageNamed:[playerViewArray objectAtIndex:i]];
        [self.scrollView addSubview:self.photoView];
        [self.scrollView setShowsHorizontalScrollIndicator:NO];
        [self.scrollView setShowsVerticalScrollIndicator:NO];

    }
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [playerViewArray count], scrollView.frame.size.height);
}

-(void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) +1;
    self.pageControl.currentPage = page;
}
    


    
    
    
    





















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
