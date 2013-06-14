//
//  ETActivityIndicatorView.m
//  ETActivityIndicatorView
//
//  Created by Eugene Trapeznikov on 5/24/13.
//  Copyright (c) 2013 Eugene Trapeznikov. All rights reserved.
//

#import "ETActivityIndicatorView.h"

#import "Circle.h"

#import <QuartzCore/QuartzCore.h>

@implementation ETActivityIndicatorView

@synthesize color;


- (void)commonInit
{
    isAnimating = NO;
    maxCircleNumber = 5;
}

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:frame andColor:[UIColor whiteColor]];
}

- (id)initWithFrame:(CGRect)frame andColor:(UIColor*)theColor
{
    self = [super initWithFrame:frame];
    if (self)
    {
        color = theColor;
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    if (isAnimating){
        //[
    }
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    if (isAnimating)
    {
        [self stopAnimating];
        [self startAnimating];
    }
}

-(void)startAnimating{
    
    if (!isAnimating){
    
        isAnimating = YES;
        
        circleNumber = 0;
        
        radius = self.frame.size.width/2;
        
        if (self.frame.size.width > self.frame.size.height){
            radius = self.frame.size.height/2;
        }
        
        circleSize = 15*radius/55;
        
        //add circles
        circleDelay = [NSTimer scheduledTimerWithTimeInterval: 0.20 target: self
                                                 selector: @selector(nextCircle) userInfo: nil repeats: YES];
    }
}

-(void)nextCircle{
    if (circleNumber<maxCircleNumber){
        
        circleNumber ++;
        
        Circle *circle = [[Circle alloc] initWithFrame:CGRectMake((self.frame.size.width-circleSize)/2 - 1, self.frame.size.height-circleSize -1, circleSize +2, circleSize+2)];
        circle.color = color;
        circle.backgroundColor = [UIColor clearColor];
        [self addSubview:circle];
        
        CGMutablePathRef circlePath = CGPathCreateMutable();
        CGPathMoveToPoint(circlePath, NULL, self.frame.size.width/2, self.frame.size.height-circleSize/2);
        
        CGPathAddArc(circlePath, NULL, self.frame.size.width/2, self.frame.size.height/2, radius-15/2, M_PI_2, -M_PI_2*3, NO);
        
        CAKeyframeAnimation *circleAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
        circleAnimation.duration = 1.5;
        circleAnimation.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.15f :0.60f :0.85f :0.4f];
        [circleAnimation setCalculationMode:kCAAnimationPaced];
        circleAnimation.path = circlePath;
        circleAnimation.repeatCount = HUGE_VALF;
        [circle.layer addAnimation:circleAnimation forKey:@"circleAnimation"];
        
        CGPathRelease(circlePath);
        
    } else {
        [circleDelay invalidate];
    }
}


-(void)stopAnimating{
    isAnimating = NO;
    
    for (UIView *v in self.subviews){
        [v removeFromSuperview];
    }
}

-(BOOL)isAnimating{
    return isAnimating;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
