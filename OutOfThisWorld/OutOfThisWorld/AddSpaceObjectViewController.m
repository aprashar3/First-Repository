//
//  AddSpaceObjectViewController.m
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/8/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "AddSpaceObjectViewController.h"
#import "SpaceObject.h"

@interface AddSpaceObjectViewController ()

@end

@implementation AddSpaceObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
    

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[self view]endEditing:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPresses:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)addButtonPresses:(UIButton *)sender {
    SpaceObject *newSpaceObject= [self returnNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}
-(SpaceObject *)returnNewSpaceObject{
    SpaceObject *addedSpaceObject = [[SpaceObject alloc] init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickName = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temprature = [self.tempratureTextField.text floatValue];
    addedSpaceObject.noOfMoons = [self.moonsTextField.text intValue];
    addedSpaceObject.interestFact = self.interestFactTextField.text;
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"EinsteinRing.jpg"];
    return addedSpaceObject;
    
}
@end
