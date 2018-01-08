//
//  PRASPractice4.h
//  Practice4
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PRASPractice4 : NSObject
@property (nonatomic) int age;
@property (strong, nonatomic) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic,strong) NSString *name;


-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes Loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;
@end
