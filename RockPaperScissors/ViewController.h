//
//  ViewController.h
//  RockPaperScissors
//
//  Created by iD Student on 6/25/13.
//  Copyright (c) 2013 Dylan Foglesong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView* aiImageView;
    IBOutlet UIImageView* playerImageView;
    int playerMove;
    int aiMove;
    int winner;
    int player;
    int ai;
}

@end
