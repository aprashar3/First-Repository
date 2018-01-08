//
//  ViewController.m
//  Practice1
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *aLabel;
@property (strong, nonatomic) IBOutlet UITextField *aTextBox;

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
- (IBAction)aButton:(id)sender {
    self.aLabel.text = self.aTextBox.text;
    [self.aTextBox resignFirstResponder];
}


@end
