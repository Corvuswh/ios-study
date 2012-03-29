//
//  ViewController.m
//  TouchView
//
//  Created by Wu Qian on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.userInteractionEnabled = YES;
    
  // TouchView *tv = [[TouchView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 260.0f, 260.0f)];
    tv = [[TouchView alloc]initWithFrame:self.view.frame];
    tv.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:tv];
    
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:[@"White Red Blue Green Yellow" componentsSeparatedByString:@" "]];
	seg.segmentedControlStyle = UISegmentedControlSegmentCenter;
    seg.tintColor = [UIColor blackColor]; 
    seg.center = CGPointMake(self.view.center.x, (self.view.bounds.size.height - seg.bounds.size.height)); 
    [self.view addSubview:seg];
    
    [seg addTarget:self action:@selector(colorChange:) forControlEvents:UIControlEventValueChanged];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) colorChange: (UISegmentedControl *) seg
{
	switch ([seg selectedSegmentIndex])
	{
		case 0: 
            tv.paint_clr = [UIColor whiteColor];
			break;
		case 1:
            tv.paint_clr = [UIColor redColor];
			break;
		case 2:
			tv.paint_clr = [UIColor blueColor];
			break;
		case 3:
			tv.paint_clr = [UIColor greenColor];
			break;
		case 4:
			tv.paint_clr = [UIColor yellowColor];
			break;
		default:
			
			break;
	}
}

@end
