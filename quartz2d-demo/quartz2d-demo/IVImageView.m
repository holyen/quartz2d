//
//  IVImageView.m
//  quartz2d-demo
//
//  Created by holyen on 13-2-1.
//  Copyright (c) 2013年 holyen.com. All rights reserved.
//

#import "IVImageView.h"
#import <QuartzCore/QuartzCore.h>

@implementation IVImageView

- (id)initWithFrame:(CGRect)frame image:(UIImage *)aImage
{
    self = [super initWithFrame:frame];
    if (self)
    {
        CGRect imageFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        self.imageView = [[UIImageView alloc] initWithImage:aImage];
        self.imageView.frame = imageFrame;
        [self addSubview:self.imageView];
        
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(frame.size.width / 10, frame.size.height / 10)];
		CAShapeLayer *maskLayer = [CAShapeLayer layer];
		maskLayer.frame = self.bounds;
		maskLayer.path = maskPath.CGPath;
		self.layer.mask = maskLayer;
    }
    return self;
}

- (void)dealloc
{
    [_imageView release];
    [super dealloc];
}

@end
