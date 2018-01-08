//
//  SpaceDataViewController.m
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/8/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "SpaceDataViewController.h"

@interface SpaceDataViewController ()

@end

@implementation SpaceDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    
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
#pragma UI TableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Nickname";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",self.spaceObject2.nickName];
            break;
        case 1:
            cell.textLabel.text = @"Diameter (Km)";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject2.diameter];
            break;
        case 2:
            cell.textLabel.text = @"Gravitational Force";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject2.gravitationalForce];
            break;
        case 3:
            cell.textLabel.text = @"Length of a year (Days)";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject2.yearLength];
            break;
        case 4:
            cell.textLabel.text = @"Length of a day (Hours)";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject2.dayLength];
            break;
        case 5:
            cell.textLabel.text = @"Temprature";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject2.temprature];
            break;
        case 6:
            cell.textLabel.text = @"Number of moons";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", self.spaceObject2.noOfMoons];
            break;
        case 7:
            cell.textLabel.text = @"Interesting Facts";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", self.spaceObject2.interestFact];
            
        default:
            break;
    }
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

@end
