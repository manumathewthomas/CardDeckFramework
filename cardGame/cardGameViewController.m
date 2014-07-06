//
//  cardGameViewController.m
//  cardGame
//
//  Created by Codeyssus on 01/02/14.
//  Copyright (c) 2014 Codeyssus. All rights reserved.
//

#import "cardGameViewController.h"
#import "playingCardDeck.h"
#import "deck.h"

@interface cardGameViewController ()
@property (strong,nonatomic) deck *deck;
@end

@implementation cardGameViewController


- (deck *)deck
{
    if (!_deck) {
        _deck = [self createDeck];
    }
    
    return _deck;
}

- (deck *)createDeck
{
    return [[playingCardDeck alloc]init];
}
- (IBAction)touchCardButton:(UIButton *)sender {
   
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
        

    }
    
}


@end
