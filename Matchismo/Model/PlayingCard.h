//
//  PlayingCard.h
//  Matchismo
//
//  Created by Kaiqi on 10/22/15.
//  Copyright © 2015 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
