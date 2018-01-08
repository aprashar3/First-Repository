//
//  SpaceDataViewController.h
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/8/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceDataViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) SpaceObject *spaceObject2;

@end
