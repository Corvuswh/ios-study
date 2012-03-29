//
//  BargainSaleViewControllerViewController.m
//  BargainSaleViewController
//
//  Created by Wu Qian on 12-2-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BargainSaleViewControllerViewController.h"

@implementation BargainSaleViewControllerViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction) myAction:(id)sender
{
    //NSString *string = [NSString stringWithFormat:@"%d",value];
    switch ([segcon selectedSegmentIndex]) {
        case 0:
            label.text = [NSString stringWithFormat:@"%d",value];
            break;
        case 1:
            label.text = [NSString stringWithFormat:@"%d",value*2];
            break;
        case 2:
            label.text = [NSString stringWithFormat:@"%d",value*3];
            break;
        case 3:
            label.text = [NSString stringWithFormat:@"%d",value*4];
            break;
        default:
            NSLog(@"Something wrong ? ......");
            break;
    }
}

-(IBAction) getText:(id)sender
{
    value = [textfield.text intValue];
    
    
  //  NSString *string = [[NSString alloc] initWithString:@"12345"];
  //  label.text = s;
    //int value = [[textfield text] intValue];
   // NSLog(@"the value = @value");
    printf("the value is %d",value);
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    NSLog(@"when and where ??");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
