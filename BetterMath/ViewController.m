//
//  ViewController.m
//  BetterMath
//
//  Created by Kerry Toonen on 2016-01-18.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (strong, nonatomic) GameModel *gameData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     self.gameData = [[GameModel alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)zero:(id)sender {
    [self.gameData.answerNumArray addObject:@"0"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;
}


- (IBAction)one:(id)sender {
    
    [self.gameData.answerNumArray addObject:@"1"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;
}

- (IBAction)two:(id)sender {
    [self.gameData.answerNumArray addObject:@"2"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;
}

- (IBAction)three:(id)sender {
    [self.gameData.answerNumArray addObject:@"3"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}

- (IBAction)four:(id)sender {
    [self.gameData.answerNumArray addObject:@"4"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}
- (IBAction)five:(id)sender {
    [self.gameData.answerNumArray addObject:@"5"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}
- (IBAction)six:(id)sender {
    [self.gameData.answerNumArray addObject:@"6"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}
- (IBAction)seven:(id)sender {
    [self.gameData.answerNumArray addObject:@"7"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}
- (IBAction)eight:(id)sender {
    [self.gameData.answerNumArray addObject:@"8"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}
- (IBAction)nine:(id)sender {
    [self.gameData.answerNumArray addObject:@"9"];
    NSString *currentAnswer = [self.gameData answerScreen];
    NSLog(@"%@", currentAnswer);
    self.answer.text = currentAnswer;}

- (IBAction)submit:(id)sender {
    [self.gameData submitAnswer];
    self.sum.text=self.gameData.sumScreen;
    [self.gameData.answerNumArray removeAllObjects];
    self.player1Score.text=[NSString stringWithFormat:@"%d",self.gameData.player1.score];
    self.player2Score.text=[NSString stringWithFormat:@"%d",self.gameData.player2.score];
    self.player1Lives.text=[NSString stringWithFormat:@"%d",self.gameData.player1.lives];
        if (self.gameData.player1.lives<1){
        self.gameScreen.text=@"Player 2 Wins!";
            self.gameData = [[GameModel alloc] init];}
    
    self.player2Lives.text=[NSString stringWithFormat:@"%d",self.gameData.player2.lives];
    if (self.gameData.player2.lives<1) {
        self.gameScreen.text=@"Player1 Wins!";
        self.gameData = [[GameModel alloc] init];
    }}

- (IBAction)start:(id)sender {
    NSString *currentQuestion = [self.gameData questionScreen];
    NSLog(@"%@", currentQuestion);
    self.gameScreen.text = currentQuestion;
     [self.gameData.answerNumArray removeAllObjects];
    self.answer.text=@"";
    self.sum.text=@"";

//    GameModel *player1 = [[GameModel alloc] init];
//    player1.playerNum = 1;
//    
//    [player1 questionScreen];
}


//-(void)calculateSum {}

@end
