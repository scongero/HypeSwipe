//
//  HypeSwipeGameVC.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "HypeSwipeGameVC.h"
#import "PlayerDatabase.h"
#import "Player.h"

@interface HypeSwipeGameVC ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


//Player Dictionary
@property (strong,nonatomic) PlayerDatabase *playerDatabase;
@property (strong,nonatomic) NSMutableDictionary *dictionaryOfPlayers;

@end

@implementation HypeSwipeGameVC

@synthesize playerViewArray;
@synthesize scrollView;
@synthesize pageControl;


-(void)viewDidLayoutSubviews
{
    NSMutableDictionary *dict = [PlayerDatabase playerDictionary];
    
    Player *player1 = [[PlayerDatabase playerClass]objectAtIndex:0];
    Player *player2 = [[PlayerDatabase playerClass]objectAtIndex:1];
    Player *player3 = [[PlayerDatabase playerClass]objectAtIndex:2];
    playerViewArray = [[NSMutableArray alloc] initWithObjects:player1,player2,player3, nil];
    
    for (int i = 0; i < [playerViewArray count]; i++)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width *i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIImageView *photoView = [[UIImageView alloc] initWithFrame:frame];
        Player *player = [playerViewArray objectAtIndex:i];
        UIImage *image = player.playerImage;
        NSLog(@"image: %@",[image description]);
        photoView.image = image;
        [self.scrollView addSubview:photoView];
        [self.scrollView setShowsHorizontalScrollIndicator:NO];
        [self.scrollView setShowsVerticalScrollIndicator:NO];
        
        if(i==2)
        {
            playerViewArray=nil;
            Player *player1 = [PlayerDatabase drawNextPlayer];
            Player *player2 = [PlayerDatabase drawNextPlayer];
            Player *player3 = [PlayerDatabase drawNextPlayer];
            [playerViewArray addObject:player1];
            [playerViewArray addObject:player2];
            [playerViewArray addObject:player3];
        }
        
    }
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [playerViewArray count], scrollView.frame.size.height);
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
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
