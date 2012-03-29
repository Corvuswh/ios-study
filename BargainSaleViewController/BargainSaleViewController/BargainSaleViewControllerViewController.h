//
//  BargainSaleViewControllerViewController.h
//  BargainSaleViewController
//
//  Created by Wu Qian on 12-2-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BargainSaleViewControllerViewController : UIViewController
{
    IBOutlet UITextField *textfield;
    IBOutlet UISegmentedControl *segcon;
    IBOutlet UILabel *label;
    int value;
}

-(IBAction) myAction:(id)sender;
-(IBAction) getText:(id)sender;
@end
