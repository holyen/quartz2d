//
//  ViewController.m
//  quartz2d-demo
//
//  Created by holyen on 13-2-1.
//  Copyright (c) 2013年 holyen.com. All rights reserved.
//

#import "ViewController.h"
#import "ZSImageView.h"
#import "IVImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Method 1:- 使用第三方开源类库 仅供参考
    //    ZSImageView *imageView = [[[ZSImageView alloc] initWithFrame:CGRectMake(20, 20, 30, 30)] autorelease];
    //	imageView.defaultImage = [UIImage imageNamed:@"avator.png"];
    //	imageView.imageUrl = @"http://img1.pplive.cn/images/2013/01/11/16555860622.png";
    //	imageView.contentMode = UIViewContentModeScaleAspectFill;
    //	imageView.clipsToBounds = YES;
    //	imageView.corners = ZSRoundCornerAll;
    //	imageView.cornerRadius = 4;
    
    // Method 2:
    IVImageView *imageView = [[IVImageView alloc] initWithFrame:CGRectMake(20, 20, 120, 120)
                                                          image:[UIImage imageNamed:@"avator.png"]];
    
	[self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
