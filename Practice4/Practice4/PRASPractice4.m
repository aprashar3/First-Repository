//
//  PRASPractice4.m
//  Practice4
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "PRASPractice4.h"

@implementation PRASPractice4
-(void)bark{
    NSLog(@"Woof Woof");
}
-(void)barkANumberOfTimes:(int)numberOfTimes{
    for (int bark=1; bark<=numberOfTimes; bark++) {
        NSLog(@"Woof woof!");
        [self bark];
    }
}
-(void)changeBreedToWerewolf{
    self.breed =@"Werewolf";
}
-(void)barkANumberOfTimes:(int)numberOfTimes Loudly:(BOOL)isLoud{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"yip yip shh shh");
        }
    }
    else{
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"rurr rurr");
        }
    }
}
-(int)ageInDogYearsFromAge:(int)regularAge{
    int newAge = regularAge * 7;
    return newAge;
}
@end
