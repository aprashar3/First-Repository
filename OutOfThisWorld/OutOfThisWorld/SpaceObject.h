//
//  SpaceObject.h
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SpaceObject : NSObject


@property (nonatomic,strong) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temprature;
@property (nonatomic) int noOfMoons;
@property (nonatomic, strong) NSString *nickName;
@property (nonatomic,strong) NSString *interestFact;

@property (nonatomic, strong) UIImage *spaceImage;

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
