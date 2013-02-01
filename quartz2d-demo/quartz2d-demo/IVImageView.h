//
//  IVImageView.h
//  quartz2d-demo
//
//  Created by holyen on 13-2-1.
//  Copyright (c) 2013年 holyen.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IVImageView : UIView

@property (nonatomic, retain) UIImageView *imageView;

- (id)initWithFrame:(CGRect)frame image:(UIImage *)aImage;

@end
