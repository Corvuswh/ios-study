//
//  windowbaseAppDelegate.h
//  windowbase
//
//  Created by Wu Qian on 12-2-26.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface windowbaseAppDelegate : NSObject <UIApplicationDelegate>{
    IBOutlet UITextField *text;
    IBOutlet UITextField *text1;    
    IBOutlet UILabel *label;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction) clickButton:(UIButton *)sender;
- (IBAction) wuqianButton:(UIButton *)sender;

@end
