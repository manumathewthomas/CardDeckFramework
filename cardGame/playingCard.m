//
//  playingCard.m
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import "playingCard.h"

@implementation playingCard

@synthesize suit = _suit;


- (NSString *) contents
{
    NSArray *rankStrings = [playingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[playingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return  _suit?_suit:@"?";
}


+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSInteger)rank
{
    if (rank <= [playingCard maxRank] ) {
        _rank = rank;
    }
}


@end
