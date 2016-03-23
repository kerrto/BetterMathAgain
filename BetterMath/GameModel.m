//
//  GameController.m
//  BetterMath
//
//  Created by Kerry Toonen on 2016-01-18.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@implementation GameModel : NSObject

- (id)init {
    self = [super init];
    if (self) {
        _playerNum = 1;
        _answerNumArray=[NSMutableArray array];
        self.player1=[[Player alloc]init];
        self.player2=[[Player alloc]init];

    }
    return self;
}



-(NSString *) questionScreen {
    
    self.xValue = arc4random_uniform(20);
    self.yValue = arc4random_uniform(20);
    
    NSString *questionString = [NSString stringWithFormat:@"Player %d: %d + %d?",self.playerNum, self.xValue,self.yValue];
    
    return questionString;
}

-(NSString *) answerScreen {
    
    NSString *joinedAnswerArray = [self.answerNumArray componentsJoinedByString: @","];
    NSString *modifiedString = [joinedAnswerArray stringByReplacingOccurrencesOfString: @"," withString:@""];
    NSString *answerString=modifiedString;
    
    return answerString;
}





-(void)submitAnswer {
    
    self.realSum = self.xValue + self.yValue;
    int intAnswerString = [self.answerScreen intValue];
    
    BOOL didGetRightAnswer= YES;
    if (self.realSum==intAnswerString){
        didGetRightAnswer=YES;
        }
    else {didGetRightAnswer=NO;
    }
        if (!didGetRightAnswer) {
        if (self.playerNum == 1) {
            self.player1.lives--;
            
        } else if (self.playerNum == 2) {
            self.player2.lives--;
        }
    }
    else {
        if (self.playerNum ==1){
            self.player1.score++;}
        if (self.playerNum ==2) {
            self.player2.score++;}
        }
    
    if (self.playerNum == 1) {
        self.playerNum = 2;
    } else if (self.playerNum == 2) {
        self.playerNum = 1;
    }
    
}

-(NSString *) sumScreen {
        NSString *sumScreenString=[NSString stringWithFormat:@"%d",self.realSum];
    return sumScreenString;
}

//(NSInteger *)lives { }





@end
