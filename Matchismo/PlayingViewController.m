//
//  PlayingViewController.m
//  Matchismo
//
//  Created by Kaiqi on 11/3/15.
//  Copyright © 2015 self.edu. All rights reserved.
//

#import "PlayingViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingViewController ()

@end

@implementation PlayingViewController

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
