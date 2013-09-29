//
//  HypeSwipeGameVC.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "HypeSwipeGameVC.h"
#import "PlayerDatabase.h"

@interface HypeSwipeGameVC ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@end

@implementation HypeSwipeGameVC

@synthesize playerViewArray;
@synthesize scrollView;
@synthesize pageControl;


-(NSMutableDictionary *)createDictionary
{
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Player *player = [[Player alloc]init];
    
    //NSMutableDictionary *dict1 = [PlayerDatabase createDictionary:dict1];
    
    
    
    
    
    
    
    
    
    
    
    playerViewArray = [[NSArray alloc] initWithObjects:@"image1.jpg", @"image2.jpg", @"image3.jpg",nil];
    
    for (int i = 0; i < [playerViewArray count]; i++)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width *i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;

        
        
        UIImageView *photoView = [[UIImageView alloc] initWithFrame:frame];
        photoView.image = [UIImage imageNamed:[playerViewArray objectAtIndex:i]];
        [self.scrollView addSubview:photoView];
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
