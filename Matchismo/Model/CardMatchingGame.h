//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Kaiqi on 10/28/15.
//  Copyright © 2015 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (instancetype)initWithCardCount:(NSInteger)count usingDeck: (Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;


@property (nonatomic, readonly) NSInteger score;

@end
