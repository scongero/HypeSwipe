//
//  PlayerDatabase.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "PlayerDatabase.h"
@interface PlayerDatabase()

@property (strong, nonatomic) NSArray *players;
@property (strong, nonatomic) NSArray *teams;
@property (strong, nonatomic) NSArray *numbers;
@property (strong, nonatomic) NSArray *positions;
@property (strong, nonatomic) NSArray *projectedFantasyScores;
@property (strong, nonatomic) NSArray *fantasyTeams;
@property (strong, nonatomic) NSArray *playerClass;

@end

@implementation PlayerDatabase

-(void)addPlayer:(Player *)player toDatabase:(PlayerDatabase *)playerDatabase
{
    
}

+ (NSArray *)players
{
    return @[@"Peyton Manning", @"C.J. Spiller", @"Reggie Bush", @"A.J. Green"];
}


+ (NSArray *)teams
{
    return @[@"DEN", @"BUF", @"DET", @"CIN"];
}

+ (NSArray *)numbers
{
    return @[@"18", @"28", @"21", @"18"];
}

+ (NSArray *)positions
{
    return @[@"QB", @"RB", @"RB", @"WR"];
}

+ (NSArray *)projectedFantasyScores
{
    return @[@"27.72", @"19.50", @"10.20", @"23.30"];
}

+ (NSArray *)fantasyTeams
{
    return @[@"Team1", @"Team1", @"Team1", @"Team1"];
}

+ (NSMutableArray *)playerClass
{
    Player *player1 = [[Player alloc] init];
    Player *player2 = [[Player alloc] init];
    Player *player3 = [[Player alloc] init];
    Player *player4 = [[Player alloc] init];
    
    
    
    NSMutableArray *playerClass = [[NSMutableArray alloc]init];
    playerClass = [NSMutableArray arrayWithObjects:(Player *)player1, (Player *)player2, (Player *)player3, (Player *)player4, nil];
    
    return playerClass;
}

/*
- (id)init
{
    self = [super init];
    
    if (self)
    {
        for (int i = 0; i < [[self players] count]; i++)
        {
            
            
            Player *currentPlayer = [self.playerClass objectAtIndex:i];
            
            currentPlayer.team = self.teams[i];
            currentPlayer.number = self.numbers[i];
            currentPlayer.position = self.positions[i];
            currentPlayer.projectedFantasyScore = self.projectedFantasyScores[i];
            currentPlayer.fantasyTeam = self.fantasyTeams[i];
            
            NSMutableDictionary *dict = [NSMutableDictionary setObject:currentPlayer forKey:self.players[i]];
        }
        
    }
    return dict;
}
*/
/*
-(NSMutableDictionary *)createDictionary:(NSMutableDictionary *)dict
{
    for (int i = 0; i < [[self players] count]; i++) {
        Player *currentPlayer = [self.playerClass objectAtIndex:i];
        
        currentPlayer.team = self.teams[i];
        currentPlayer.number = self.numbers[i];
        currentPlayer.position = self.positions[i];
        currentPlayer.projectedFantasyScore = self.projectedFantasyScores[i];
        currentPlayer.fantasyTeam = self.fantasyTeams[i];
        
        [dict setObject:currentPlayer forKey:self.players[i]];
        
        NSArray *keys = [dict allKeys];
        
        for (NSString *key in keys)
        {
            NSLog(@"%@'s team is %@", key, [[dict objectForKey:key] team]);
        }
    }
    return dict;
}
*/







@end
