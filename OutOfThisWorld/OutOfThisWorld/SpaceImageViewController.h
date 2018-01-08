//
//  SpaceImageViewController.h
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpaceObject.h"

@interface SpaceImageViewController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong,nonatomic) UIImageView *imageView;
@property (strong,nonatomic) SpaceObject *spaceObject1;

@end
