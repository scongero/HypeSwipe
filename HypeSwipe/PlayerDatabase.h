//
//  PlayerDatabase.h
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerDatabase : NSObject



-(void)addPlayer:(Player *)player toDatabase:(PlayerDatabase *)playerDatabase;
+(Player *)drawNextPlayer;



//////Contents
+ (NSArray *)players;
+ (NSArray *)teams;
+ (NSArray *)numbers;
+ (NSArray *)positions;
+ (NSArray *)projectedFantasyScores;
+ (NSArray *)fantasyTeams;
+ (NSMutableArray *)playerClass;
+ (NSArray *)playerImages;
+ (NSArray *)teamRanks;
+ (NSArray *)friendTeams;
+ (NSArray *)friendTeamScores;
+(NSMutableDictionary *)playerDictionary;
+(NSMutableDictionary *)unswipedPlayerDatabase;
+(NSMutableDictionary *)swipedPlayerDatabase;


@end
