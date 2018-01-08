//
//  outerSpaceTableViewTableViewController.h
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddSpaceObjectViewController.h"

@interface outerSpaceTableViewTableViewController : UITableViewController <AddSpaceObjectViewControllerDelegate>
@property (strong, nonatomic) NSMutableArray *planet;
@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;
@end
