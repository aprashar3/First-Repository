//
//  outerSpaceTableViewTableViewController.m
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "outerSpaceTableViewTableViewController.h"
#import "AstronomicalData.h"
#import "SpaceObject.h"
#import "SpaceImageViewController.h"
#import "SpaceDataViewController.h"
@interface outerSpaceTableViewTableViewController ()

@end

@implementation outerSpaceTableViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
   
    self.planet = [[NSMutableArray alloc]init];
    for( NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets]){
        NSString *imangeName = [NSString stringWithFormat:@"%@.jpg", planetData[PLANET_NAME]];
        SpaceObject *planet = [[SpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imangeName]];
        [_planet addObject:planet];
        
    }
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if( [sender isKindOfClass:[UITableViewCell class]]){
        if ([segue.destinationViewController isKindOfClass:[SpaceImageViewController class]]){
            SpaceImageViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            SpaceObject *selectedObject;
            if(path.section == 0){
                selectedObject = [self.planet objectAtIndex:path.row];
            }
            else if (path.section == 1){
                selectedObject = [self.addedSpaceObjects objectAtIndex:path.row];
            }
            nextViewController.spaceObject1 = selectedObject;
        }
    }
    if([sender isKindOfClass:[NSIndexPath class]]){
        if([segue.destinationViewController isKindOfClass:[SpaceDataViewController class]]){
            SpaceDataViewController *targetViewController = segue.destinationViewController;
            NSIndexPath *path = sender;
            SpaceObject *selectedObject;
            if (path.section == 0) {
            selectedObject = self.planet[path.row];
            }
            else if (path.section == 1){
                selectedObject = self.addedSpaceObjects[path.row];
            }
            targetViewController.spaceObject2 = selectedObject;
        }
    }
    if ([segue.destinationViewController isKindOfClass:[AddSpaceObjectViewController class]]){
        AddSpaceObjectViewController *addSpaceObjectVC = segue.destinationViewController;
        addSpaceObjectVC.delegate = self;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma AddSpaceObjectViewController Delegate

-(void)addSpaceObject{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)addSpaceObject:(SpaceObject *)spaceObject1{
    if (!self.addedSpaceObjects){
        self.addedSpaceObjects =[[NSMutableArray alloc] init];
    }
    [self.addedSpaceObjects addObject:spaceObject1];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.tableView reloadData];
}
-(void)didCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    if ([self.addedSpaceObjects count]){
        return 2;
    }
    else{
        return 1;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    if ( section == 1){
        return [self.addedSpaceObjects count];
    }
    else{
        return [self.planet count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.section == 1){
        SpaceObject *planet1 = [_addedSpaceObjects objectAtIndex:indexPath.row];
        cell.textLabel.text = planet1.name;
        cell.detailTextLabel.text = planet1.nickName;
        cell.imageView.image = planet1.spaceImage;
    }
    // Configure the cell...
    else{
        SpaceObject *planet1 = [_planet objectAtIndex:indexPath.row];
        cell.textLabel.text = planet1.name;
        cell.detailTextLabel.text =planet1.nickName;
        cell.imageView.image = planet1.spaceImage;
    }
    
    
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
    return cell;
}
#pragma UITableView Delegate
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"push to space data" sender:indexPath];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
