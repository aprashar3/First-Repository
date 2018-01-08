//
//  AddSpaceObjectViewController.h
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/8/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@protocol AddSpaceObjectViewControllerDelegate <NSObject>

@required

-(void)addSpaceObject:(SpaceObject *)spaceObject1;
-(void)didCancel;

@end

@interface AddSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <AddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *tempratureTextField;
@property (strong, nonatomic) IBOutlet UITextField *moonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestFactTextField;
- (IBAction)cancelButtonPresses:(UIButton *)sender;
- (IBAction)addButtonPresses:(UIButton *)sender;

@end
