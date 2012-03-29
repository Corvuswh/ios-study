//
//  BargainSaleViewControllerAppDelegate.h
//  BargainSaleViewController
//
//  Created by Wu Qian on 12-2-28.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BargainSaleViewControllerViewController;

@interface BargainSaleViewControllerAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet BargainSaleViewControllerViewController *viewController;

@end
