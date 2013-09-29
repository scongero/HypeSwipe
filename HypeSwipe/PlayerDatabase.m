//
//  PlayerDatabase.m
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import "PlayerDatabase.h"
#import "Player.h"
@interface PlayerDatabase()




@end

@implementation PlayerDatabase

NSArray *players;
NSArray *teams;
NSArray *numbers;
NSArray *positions;
NSArray *projectedFantasyScores;
NSArray *fantasyTeams;
NSArray *playerImages;
NSMutableArray *playerClass;

//Dictionary
NSMutableDictionary *playerDictionary;


-(void)addPlayer:(Player *)player toDatabase:(PlayerDatabase *)playerDatabase
{
    
}

-(Player *)drawNextPlayer
{
}

+ (NSArray *)players
{
    if (!players)
    {
        players = @[@"Peyton Manning", @"C.J. Spiller", @"Reggie Bush", @"A.J. Green"];
    }
    return players;
}


+ (NSArray *)teams
{
    if(!teams)
    {
        teams = @[@"DEN", @"BUF", @"DET", @"CIN"];
    }
    return teams;
}

+ (NSArray *)numbers
{
    if (!numbers)
    {
        numbers =  @[@"18", @"28", @"21", @"18"];
    }
    return numbers;
}

+ (NSArray *)positions
{
    if (!positions)
    {
        positions = @[@"QB", @"RB", @"RB", @"WR"];
    }
    return positions;
}

+ (NSArray *)projectedFantasyScores
{
    if (!projectedFantasyScores)
    {
        projectedFantasyScores = @[@"27.72", @"19.50", @"10.20", @"23.30"];
    }
    return projectedFantasyScores;
}

+ (NSArray *)fantasyTeams
{
    if (!fantasyTeams)
    {
        fantasyTeams = @[@"Team1", @"Team1", @"Team1", @"Team1"];
    }
    return fantasyTeams;
}

+ (NSMutableArray *)playerClass
{
    if (!playerClass)
    {
        NSMutableArray *playerArray = [[NSMutableArray alloc]init];
        for (int i = 0; i < [[self players] count];i++)
        {
            Player *aPlayer = [[Player alloc] init];
            [playerArray addObject:(Player *)aPlayer];
        }
        playerClass = playerArray;
    }
    
    return playerClass;
}

+ (NSArray *)playerImages
{
    if (!playerImages)
    {
        playerImages = @[];
    }
    return playerImages;
}

+(NSMutableDictionary *)playerDictionary
{
    if(!playerDictionary)
    {
        NSMutableDictionary *tempDictionary = [[NSMutableDictionary alloc] init];

        for (int i = 0; i < [[self players] count]; i++)
        {
            Player *currentPlayer = [[self playerClass] objectAtIndex:i];
            
            currentPlayer.team = [[self teams]objectAtIndex:i];
            currentPlayer.number = [[self numbers]objectAtIndex:i];
            currentPlayer.position = [[self positions]objectAtIndex:i];
            currentPlayer.projectedFantasyScore = [[self projectedFantasyScores] objectAtIndex:i];
            currentPlayer.fantasyTeam = [[self fantasyTeams] objectAtIndex:i];
            
            [tempDictionary setObject:(Player*)currentPlayer forKey:[players objectAtIndex:i]];
        }
        playerDictionary = tempDictionary;
    }
    
    
    return playerDictionary;
}










@end
