//
//  ViewController.h
//  Matchismo
//
//  Created by Kaiqi on 10/20/15.
//  Copyright © 2015 self.edu. All rights reserved.
//  Abstract class. Must implement methods as described below.

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface ViewController : UIViewController

// protected
// for subclasses
- (Deck *)createDeck; // abstract


@end

