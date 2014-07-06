//
//  card.m
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import "card.h"

@interface card()

@end

@implementation card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
