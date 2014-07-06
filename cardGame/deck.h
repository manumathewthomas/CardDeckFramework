//
//  deck.h
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"

@interface deck : NSObject

- (void)addCard:(card  *)card atTop:(BOOL)atTop;
- (void)addCard:(card *)card;

- (card *)drawRandomCard;



@end
