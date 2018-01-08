//
//  ViewController.m
//  DummyTableview
//
//  Created by Manu Prashar on 1/3/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myData = [[NSMutableArray alloc]initWithObjects:@"data1",@"data2",@"data3",@"data4",@"data5",@"data6",@"data7",@"data8",@"data9", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [myData count]/2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellidentifier = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
    }
    NSString *stringForCell;
    
    if (indexPath.section == 0) {
        stringForCell= [myData objectAtIndex:indexPath.row];
    } else if (indexPath.section == 1) {
        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
    }
    [cell.textLabel setText:stringForCell];
    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *headerTitle;
    if (section==0) {
        headerTitle=@"section1Header";
    }else{
        headerTitle= @"section2Header";
    }
    return headerTitle;
}
-(NSString *) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSString *footerTitle;
    if (section==0) {
        footerTitle= @"section1Footer";
    }
    else{
        footerTitle= @"section2.footer";
    }
    return footerTitle;
}
#pragma mark - Tableview Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"section; %d Row %d and its data is %@",indexPath.section,indexPath.row,cell.textLabel.text);
}

@end
