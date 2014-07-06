//
//  playingCard.h
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import "card.h"

@interface playingCard : card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
