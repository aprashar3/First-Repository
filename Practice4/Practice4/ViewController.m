//
//  ViewController.m
//  Practice4
//
//  Created by Manu Prashar on 1/2/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "ViewController.h"
#import "PRASPractice4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PRASPractice4 *mydog = [[PRASPractice4 alloc]init];
    mydog.name = @"nana";
    mydog.breed = @"Pitbull";
    mydog.age = 1;
    mydog.image = [UIImage imageNamed:@"bulldog.jpg"];
    self.dogImageView.image = mydog.image;
    self.dogNameLabel.text = mydog.name;
    self.dogBreedLabel.text= mydog.breed;
    
    
    PRASPractice4 *secondDog = [[PRASPractice4 alloc]init];
    secondDog.name = @"beebu";
    secondDog.breed = @"Delmy";
    secondDog.age = 2;
    secondDog.image = [UIImage imageNamed:@"small.jpg"];
    
    PRASPractice4 *thirdDog = [[PRASPractice4 alloc]init];
    thirdDog.name =@"jacky";
    thirdDog.breed= @"german shephard";
    thirdDog.age = 3;
    thirdDog.image = [UIImage imageNamed:@"germanshephard.jpg"];
    
    PRASPractice4 *fourthDog = [[PRASPractice4 alloc]init];
    fourthDog.name = @"pintu";
    fourthDog.breed = @"pug";
    fourthDog.age = 2;
    fourthDog.image = [UIImage imageNamed:@"pug.jpg"];
    
    self.myDogs = [[NSMutableArray alloc]init];
    [self.myDogs addObject:mydog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*-(void)allWholeNumbersBelow:(int)number{
    if (number > 0) {
        for (int i = number; i > 0; i--) {
            NSLog(@"%i",i);
        }
    }
    else{
        NSLog(@"Please enter a positive whole number");
    }
}
-(void)allWholeNumbersBetweenIntegerOne:(int)firstInteger andIntegerTwo:(int)secondInteger{
    if (firstInteger == secondInteger) {
        NSLog(@"Both numbers are same");
    }
    else if (firstInteger > secondInteger)
    {
        for (int i = firstInteger; i >= secondInteger; i--) {
            NSLog(@"%i",i);
        }
        }
    else{
        for (int i = secondInteger; i>= firstInteger; i--) {
            NSLog(@"%i",i);
        }
    }
}
- (int)factorialOfNumber:(int)number{
    int answer = number;
    for (int i = number; i > 1; i--) {
        answer = answer * (i - 1);
    }
    return answer;
}
 //NSLog(@"my Dog name is %@ and its age is %i and its breed is %@", mydog.name,mydog.age,mydog.breed);
 //[mydog barkANumberOfTimes:9];
 //[mydog changeBreedToWerewolf];
 //NSLog(@"My dog breed is changed to %@",mydog.breed);
 //[mydog barkANumberOfTimes:5 Loudly:YES];
 //int newAge = [mydog ageInDogYearsFromAge:mydog.age];
 //NSLog(@"Yore age in dog years is %i", newAge);
 //[self allWholeNumbersBelow:-9];
 //[self allWholeNumbersBetweenIntegerOne:-15 andIntegerTwo:1];
 //int factorialNumber = [self factorialOfNumber:7];
 //NSLog(@"The factorial is %i", factorialNumber);

 */

- (IBAction)nextDogButtonPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    PRASPractice4 *randomDog = [self.myDogs objectAtIndex:randomIndex];
    self.dogImageView.image = randomDog.image;
    self.dogBreedLabel.text = randomDog.breed;
    self.dogNameLabel.text = randomDog.name;
    sender.title =@"And Another";
    
}
@end

