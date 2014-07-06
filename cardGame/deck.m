//
//  deck.m
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import "deck.h"

@interface deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation deck

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}

- (void)addCard:(card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else{
        [self.cards addObject:card];
    }
    
}

- (void)addCard:(card *)card
{
    [self addCard:card atTop:NO];
}


- (card*)drawRandomCard
{
    card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        
        [self.cards removeObjectAtIndex:index];

    }
    
    return randomCard;
}

@end
