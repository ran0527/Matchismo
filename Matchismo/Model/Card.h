//
//  Card.h
//  Matchismo
//
//  Created by Kaiqi on 10/20/15.
//  Copyright © 2015 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match: (NSArray *)otherCards;

@end
