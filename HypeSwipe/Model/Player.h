//
//  Player.h
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject


@property (strong, nonatomic) NSMutableDictionary *dict;
@property (strong, nonatomic) UIImage *picture;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *team;
@property (strong, nonatomic) NSString *number;
@property (strong, nonatomic) NSString *position;
@property (strong,nonatomic) UIImage *playerImage;
@property (strong, nonatomic) NSNumber *projectedFantasyScore;
@property (strong, nonatomic) NSString *fantasyTeam;

@property (nonatomic) BOOL hyped;








@end
