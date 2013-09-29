//
//  HypeSwipeGameVC.h
//  HypeSwipe
//
//  Created by Spencer Congero on 9/28/13.
//  Copyright (c) 2013 Aeon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDatabase.h"
@interface HypeSwipeGameVC : UIViewController  <UIScrollViewDelegate>

@property (nonatomic, strong) NSArray *playerViewArray;

-(NSMutableDictionary *)createDictionary;


@end
