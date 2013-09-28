//
//  Player.h
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (strong, nonatomic) UIImage *picture;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *number;
@property (strong, nonatomic) NSString *position;
@property (strong, nonatomic) NSNumber *projectedFantasyScore;
@property (nonatomic) BOOL hyped;


@end
