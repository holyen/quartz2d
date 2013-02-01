//
//  ViewController.m
//  quartz2d-demo
//
//  Created by holyen on 13-2-1.
//  Copyright (c) 2013年 holyen.com. All rights reserved.
//

#import "ViewController.h"
#import "ZSImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ZSImageView *imageView = [[[ZSImageView alloc] initWithFrame:CGRectMake(20, 20, 30, 30)] autorelease];
	imageView.defaultImage = [UIImage imageNamed:@"avator.png"];
	imageView.imageUrl = @"http://img1.pplive.cn/images/2013/01/11/16555860622.png";
	imageView.contentMode = UIViewContentModeScaleAspectFill;
	imageView.clipsToBounds = YES;
	imageView.corners = ZSRoundCornerAll;
	imageView.cornerRadius = 4;
    
	[self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
