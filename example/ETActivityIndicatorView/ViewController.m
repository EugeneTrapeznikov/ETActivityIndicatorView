//
//  ViewController.m
//  ETActivityIndicatorView
//
//  Created by Eugene Trapeznikov on 5/23/13.
//  Copyright (c) 2013 Eugene Trapeznikov. All rights reserved.
//

#import "ViewController.h"

#import "ETActivityIndicatorView.h"

@interface ViewController ()

@end

@implementation ViewController

ETActivityIndicatorView * etActivity;

UIActivityIndicatorView *activity;

- (void)viewDidLoad
{
    [super viewDidLoad];

    //standard UIActivityIndicatorView
    
    activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-110, 150, 20, 20)];
    activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    [activity startAnimating];
    [self.view addSubview:activity];
    
    //ETActivityIndicatorView
    etActivity = [[ETActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 150, 60, 60)];
    
    //you can set your custom color for ETActivityIndicatorView
    //etActivity.color = [UIColor blueColor];
    
    [etActivity startAnimating];
    [self.view addSubview:etActivity];
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [startButton setTitle:@"start" forState:UIControlStateNormal];
    startButton.frame = CGRectMake(50, 50, 100, 50);
    [startButton addTarget:self action:@selector(startAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [stopButton setTitle:@"stop" forState:UIControlStateNormal];
    stopButton.frame = CGRectMake(self.view.frame.size.width - 50 - 100, 50, 100, 50);
    [stopButton addTarget:self action:@selector(stopAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopButton];
}

-(void)startAnimation{
    [activity startAnimating];
    [etActivity startAnimating];
}

-(void)stopAnimation{
    [activity stopAnimating];
    [etActivity stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
