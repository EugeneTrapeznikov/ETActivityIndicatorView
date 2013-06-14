//
//  ETActivityIndicatorView.h
//  ETActivityIndicatorView
//
//  Created by Eugene Trapeznikov on 5/24/13.
//  Copyright (c) 2013 Eugene Trapeznikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETActivityIndicatorView : UIView
{
    BOOL isAnimating;
    int circleNumber;
    int maxCircleNumber;
    float circleSize;
    float radius;
    UIColor *color;
    NSTimer *circleDelay;
}

@property (nonatomic,retain) UIColor *color;

-(id)initWithFrame:(CGRect)frame andColor:(UIColor*)theColor;

-(void)startAnimating;

-(void)stopAnimating;

-(BOOL)isAnimating;

@end
