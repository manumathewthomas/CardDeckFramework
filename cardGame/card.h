//
//  card.h
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter = isChosen) BOOL chosen;
@property (nonatomic,getter = isMatched) BOOL match;

- (int)match:(NSArray *)otherCards;

@end
