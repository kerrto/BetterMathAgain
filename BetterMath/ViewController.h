//
//  ViewController.h
//  BetterMath
//
//  Created by Kerry Toonen on 2016-01-18.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *player1Lives;
@property (strong, nonatomic) IBOutlet UILabel *player2Lives;
@property (strong, nonatomic) IBOutlet UILabel *player1Score;
@property (strong, nonatomic) IBOutlet UILabel *player2Score;
@property (strong, nonatomic) IBOutlet UILabel *gameScreen;
@property (strong, nonatomic) IBOutlet UILabel *sum;
@property (strong, nonatomic) IBOutlet UILabel *answer;
@property (strong, nonatomic) IBOutlet UILabel *check;

-(void)calculateSum;

@end

