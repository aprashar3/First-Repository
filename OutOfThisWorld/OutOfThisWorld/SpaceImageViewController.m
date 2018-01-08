//
//  SpaceImageViewController.m
//  OutOfThisWorld
//
//  Created by Manu Prashar on 1/5/18.
//  Copyright © 2018 Manu Prashar. All rights reserved.
//

#import "SpaceImageViewController.h"

@interface SpaceImageViewController ()

@end

@implementation SpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [[UIImageView alloc] initWithImage:self.spaceObject1.spaceImage];
    _scrollView.contentSize = _imageView.frame.size;
    [_scrollView addSubview:_imageView];
    _scrollView.delegate = self;
    _scrollView.maximumZoomScale = 2.0;
    _scrollView.minimumZoomScale = 0.25;
    _scrollView.zoomScale = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _imageView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
