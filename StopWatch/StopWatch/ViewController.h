//
//  ViewController.h
//  StopWatch
//
//  Created by Wu Qian on 12-3-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UILabel *label;
    BOOL checked; 
    
    NSTimer *timer;
    float time;
    NSString *timestr;
}
-(IBAction)setRed:(UIButton *)sender; 
-(IBAction)cleanHistory:(UIButton *)sender;
-(int)updateTime;

@end
