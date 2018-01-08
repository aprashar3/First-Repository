//
//  ViewController.m
//  Pratice3
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


- (IBAction)myButton:(UIButton *)sender {
    int humanAge = [self.myText.text intValue];
    int dogAge = humanAge * 7 ;
    self.myLabel.text = [NSString stringWithFormat:@"%i", dogAge];
}
@end
