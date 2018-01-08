//
//  ViewController.h
//  Practice4
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)nextDogButtonPressed:(UIBarButtonItem *)sender;
@property (strong, nonatomic) IBOutlet UIImageView *dogImageView;
@property (strong, nonatomic) IBOutlet UILabel *dogNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *dogBreedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;


@end

