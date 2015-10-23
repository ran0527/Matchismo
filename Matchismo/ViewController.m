//
//  ViewController.m
//  Matchismo
//
//  Created by Kaiqi on 10/20/15.
//  Copyright © 2015 self.edu. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;
@end

@implementation ViewController

- (PlayingCardDeck *)deck {
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed: @"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed: @"cardfront"]
                          forState:UIControlStateNormal];
        Card *card = [self.deck drawRandomCard];
        NSString *title = card.contents;
        [sender setTitle:title forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
