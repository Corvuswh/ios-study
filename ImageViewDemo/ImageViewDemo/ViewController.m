//
//  ViewController.m
//  ImageViewDemo
//
//  Created by Wu Qian on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageview,startButton,stopButton;

- (void)viewDidLoad
{  
    NSLog(@"111retainCout = %d ",self.imageview.retainCount);

    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    self.imageview.animationImages = [NSArray arrayWithObjects:
                                      [UIImage imageNamed:@"1.jpg"],
                                      [UIImage imageNamed:@"2.jpg"],
                                      [UIImage imageNamed:@"3.jpg"],
                                      [UIImage imageNamed:@"4.jpg"],
                                      nil];
    self.imageview.animationDuration = 5.0;

    [imageview release];
    NSLog(@"222retainCout = %d ",self.imageview.retainCount);

    [startButton release];
    [stopButton release];    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (IBAction)startAnimation:(id)sender
{

    [self.imageview startAnimating];
    [imageview retain];
    NSLog(@"333retainCout = %d ",imageview.retainCount);
    //[stopButton release];
}

- (IBAction)stopAnimation:(id)sender
{
    [self.imageview stopAnimating];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
