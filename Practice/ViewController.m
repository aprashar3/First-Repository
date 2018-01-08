//
//  ViewController.m
//  Practice
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSString *username;
@property (nonatomic,strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *aUserName;

@property (weak, nonatomic) IBOutlet UITextField *aPassWord;
@property (weak, nonatomic) IBOutlet UILabel *notificationLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.username = @"manu";
    self.password = @"pwd";
    NSLog(@"%@", self.username);
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)aLogin:(id)sender {
    BOOL aUserEqual = [self.username isEqualToString:[self.aUserName text]];
    BOOL aPwdEqual = [self.password isEqualToString:[self.aPassWord text]];
    if(aUserEqual && aPwdEqual ){
        NSLog(@"Success");
        [self.notificationLbl setText:@"login successful"];
    }
    else{
        NSLog(@"Faliure");
        self.notificationLbl.text = @"wrong username or password";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
