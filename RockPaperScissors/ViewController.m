//
//  ViewController.m
//  RockPaperScissors
//
//  Created by iD Student on 6/25/13.
//  Copyright (c) 2013 Dylan Foglesong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define rock 0
#define paper 1
#define scissors 2
#define player 100
#define ai 200;
#define tie = 300;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Welcome %@\nTo Rock, Paper, Scissors,", @"Dylan");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getPlayerMove:(id)sender
{
    playerMove = [sender tag];
    [self playRPS];
}

- (void)getAIMove
{
    aiMove = arc4random()%3;
}

- (void)playRPS
{
    [self getAIMove];
    if (playerMove == aiMove) {
        if(aiMove == scissors)
            winner = player;
        else if (aiMove == paper)
            winner = ai;
    } else if(playerMove == scissors) {
        if (aiMove == rock){
            winner = ai;
        }
        else if(aiMove == paper)
            winner = player;
    } else {
        if(aiMove == rock)
            winner = player;
        else if(aiMove == scissors)
            winner = ai;
        }
    }

@end
