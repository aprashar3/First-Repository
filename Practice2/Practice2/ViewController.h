//
//  ViewController.h
//  Practice2
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *billLabel;
@property (strong, nonatomic) IBOutlet UITextField *billText;

- (IBAction)convertUnit:(id)sender;


@end

