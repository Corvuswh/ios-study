//
//  study1AppDelegate.h
//  study1
//
//  Created by Wu Qian on 12-2-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class study1ViewController;

@interface study1AppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet study1ViewController *viewController;

@end
