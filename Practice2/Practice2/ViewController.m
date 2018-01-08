//
//  ViewController.m
//  Practice2
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convertUnit:(id)sender {
    float numberOfBills = [self.billText.text floatValue];
    float numberOfFields = numberOfBills / 91440;
    self.billLabel.text = [NSString stringWithFormat:@"%f", numberOfFields];
}
@end
