//
//  HypeSwipeGame.h
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerDatabase.h"
@interface HypeSwipeGame : NSObject

@property (strong, nonatomic) NSNumber *myScore;

-(id)initWithPlayerCount:(NSInteger)count; // using database unswipedPlayerDatabase
-(void)switchDatabase:(PlayerDatabase *)swipedPlayerDatabase withDatabase:(PlayerDatabase *)unswipedPlayerDatabase;
-(void)transferPlayerFromDatabase:(PlayerDatabase *)unswipedPlayerDatabase toDatabase:(PlayerDatabase *)swipedPlayerDatabase;

@end
