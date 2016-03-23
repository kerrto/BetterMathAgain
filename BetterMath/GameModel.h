//
//  GameController.h
//  BetterMath
//
//  Created by Kerry Toonen on 2016-01-18.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

// approach 1, use Player class
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
// later in .m, self.player1.score

// approach 2, use multiple properties


@property (nonatomic, assign) int xValue;

@property (nonatomic, assign) int yValue;

@property (nonatomic, assign) int realSum;

@property (nonatomic, assign) int intAnswerString;

@property (nonatomic, assign) NSString *questionScreen;

@property (nonatomic, strong) NSString *sumScreen;

@property (nonatomic, assign) int playerNum;

@property (nonatomic) NSMutableArray *answerNumArray;

@property (nonatomic) NSString *joinedAnswerArray;
-(NSString *) sumScreen;

-(NSString *) questionScreen;
-(NSString *) answerScreen;
-(void)submitAnswer;



@end
