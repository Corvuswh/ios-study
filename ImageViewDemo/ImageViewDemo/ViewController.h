//
//  ViewController.h
//  ImageViewDemo
//
//  Created by Wu Qian on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIButton *button;
}

@property (nonatomic,assign) IBOutlet UIImageView *imageview;
@property (nonatomic,retain) IBOutlet UIButton *startButton,*stopButton;

-(IBAction)startAnimation:(id)sender;
-(IBAction)stopAnimation:(id)sender;
@end
