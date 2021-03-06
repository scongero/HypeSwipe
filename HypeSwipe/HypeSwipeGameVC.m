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
@property (weak, nonatomic) IBOutlet UILabel *teamLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerNameLabel;
@property (weak, nonatomic) IBOutlet UIView *redArrow;
@property (weak, nonatomic) IBOutlet UIView *greenArrow;

//Player Dictionary
@property (strong,nonatomic) PlayerDatabase *playerDatabase;
@property (strong,nonatomic) NSMutableDictionary *dictionaryOfPlayers;


@property (nonatomic,strong) UIImageView *photoView;
@property (nonatomic,strong) UIImage *image;


@property (nonatomic)BOOL notFirst;
@property (nonatomic) CGRect rect;

@end

@implementation HypeSwipeGameVC

@synthesize playerViewArray;
@synthesize scrollView;
@synthesize pageControl;


-(void)setTeamLabel:(UILabel *)teamLabel usingPlayer:(Player *)player
{
    
    self.teamLabel.text = player.team;
}


-(void)setNumberLabel:(UILabel *)numberLabel usingPlayer:(Player *)player
{
    
    self.numberLabel.text = player.number;
}
-(void)setPositionLabel:(UILabel *)positionLabel usingPlayer:(Player *)player
{
    
    self.positionLabel.text = player.position;
}
-(void)setPlayerNameLabel:(UILabel *)playerNameLabel usingPlayer:(Player *)player
{
    
    self.playerNameLabel.text = player.name;
}

-(void)viewDidLayoutSubviews
{
    self.scrollView.frame=CGRectMake(0, 45, 320, 366);
    NSMutableDictionary *dict = [PlayerDatabase playerDictionary];
    if(self.notFirst==false)
    {
        Player *player1 = [PlayerDatabase drawNextPlayer];
        [self setTeamLabel:self.teamLabel usingPlayer:player1];
        [self setPlayerNameLabel:self.playerNameLabel usingPlayer:player1];
        [self setPositionLabel:self.positionLabel usingPlayer:player1];
        Player *player2 = [PlayerDatabase drawNextPlayer];
        [self setTeamLabel:self.teamLabel usingPlayer:player2];
        [self setPlayerNameLabel:self.playerNameLabel usingPlayer:player2];
        [self setPositionLabel:self.positionLabel usingPlayer:player2];
        Player *player3 = [PlayerDatabase drawNextPlayer];
        [self setTeamLabel:self.teamLabel usingPlayer:player3];
        [self setPlayerNameLabel:self.playerNameLabel usingPlayer:player3];
        [self setPositionLabel:self.positionLabel usingPlayer:player3];
        playerViewArray = [[NSMutableArray alloc] initWithObjects:player1,player2,player3, nil];
    }
    
    for (int i = 0; i < [playerViewArray count]; i++)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width *i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        self.photoView = [[UIImageView alloc] initWithFrame:frame];
        Player *player = [playerViewArray objectAtIndex:i];
        self.image = player.playerImage;
        NSLog(@"image: %@",[self.image description]);
        self.photoView.image = [UIImage imageNamed:[player.playerImage description]];
        [self.scrollView addSubview:self.photoView];
        [self setTeamLabel:self.teamLabel usingPlayer:player];
        [self setPlayerNameLabel:self.playerNameLabel usingPlayer:player];
        [self setPositionLabel:self.positionLabel usingPlayer:player];
        [self.scrollView setShowsHorizontalScrollIndicator:NO];
        [self.scrollView setShowsVerticalScrollIndicator:NO];
        
                
        
    }
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [playerViewArray count], scrollView.frame.size.height);
}

-(NSMutableArray*)refreshPlayerList:(NSMutableArray *)aPlayerArray
{
    
    
    Player *player1 = [aPlayerArray lastObject];
    Player *player2 = [PlayerDatabase drawNextPlayer];
    Player *player3 = [PlayerDatabase drawNextPlayer];
    
    
    
    [playerViewArray addObject:player1];
    [playerViewArray addObject:player2];
    [playerViewArray addObject:player3];
    
    return playerViewArray;

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
    
    if(self.pageControl.currentPage == 2)
    {
        self.photoView.frame = CGRectMake(0, 45, 320, 366);

        playerViewArray = [self refreshPlayerList:playerViewArray];
        self.pageControl.currentPage=0;
        
        
        
        for (int i = 0; i < [[self.scrollView subviews] count];i++)
        {
            [[[self.scrollView subviews] objectAtIndex:i] removeFromSuperview];
        }
        [self viewDidLayoutSubviews];
        
    }
    


}


    



- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender {
    
  

}


- (IBAction)hypeUp:(UISwipeGestureRecognizer *)sender {
    [UIView transitionWithView:self.greenArrow duration:0.3 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.greenArrow.center = CGPointMake(260, -100);
    }
                         completion:NULL];

}


















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
