//
//  ViewController.h
//  DummyTableview
//
//  Created by Manu Prashar on 1/3/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
        IBOutlet UITableView *simpleViewController;
    NSMutableArray * myData;

}
@end
