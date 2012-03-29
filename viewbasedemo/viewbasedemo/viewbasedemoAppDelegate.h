//
//  viewbasedemoAppDelegate.h
//  viewbasedemo
//
//  Created by Wu Qian on 12-2-26.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class viewbasedemoViewController;

@interface viewbasedemoAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet viewbasedemoViewController *viewController;

@end
