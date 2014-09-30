//
//  CardGameViewController.m
//  matchismo
//
//  Created by Tanuj Gupta on 9/30/14.
//  Copyright (c) 2014 Card Game. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

// just a test to check git

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A❤︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
    
}

@end
