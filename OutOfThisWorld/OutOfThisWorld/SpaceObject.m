//
//  SpaceObject.m
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"


@implementation SpaceObject
-(id)init{
    self = [self initWithData:nil andImage:nil];
    return self;
}
-(id)initWithData:(NSDictionary*)data andImage:(UIImage *)image{
    self = [super init];
    _name = data[PLANET_NAME];
    _gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    _diameter = [data[PLANET_DIAMETER] intValue];
    _yearLength = [data[PLANET_YEAR_LENGTH] intValue];
    _dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    _temprature =[data[PLANET_TEMPERATURE]floatValue];
    _noOfMoons=[data[PLANET_NUMBER_OF_MOONS]intValue];
    _nickName=data[PLANET_NICKNAME];
    _interestFact=data[PLANET_INTERESTING_FACT];
    
    _spaceImage = image;
    return self;
}

@end
