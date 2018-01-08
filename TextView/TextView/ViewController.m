//
//  ViewController.m
//  TextView
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


- (IBAction)myButton:(id)sender {
    
    for (int x=0; x<=10; x++) {
        self.myView.text= [self.myView.text stringByAppendingString:@"\n hello"];
        NSLog(@"success");
    }
    self.myView.text=[self.myView.text stringByAppendingString:@"\n Bye Bye"];

}
@end
