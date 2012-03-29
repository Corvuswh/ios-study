//
//  ViewController.h
//  MyTimer
//
//  Created by Wu Qian on 12-3-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL checked;
    float time;
}

@property (strong,nonatomic) IBOutlet UIButton *leftBtn, *rightBtn;
@property (strong,nonatomic) IBOutlet UILabel *label;
@property (strong,nonatomic) NSTimer *timer;
@property (strong,nonatomic) NSString *timestr;
@property (strong,nonatomic) IBOutlet UITableView *tableview;
@property (strong,nonatomic) NSArray *list;

- (IBAction) startOrstop:(UIButton *)sender;
- (IBAction) resetOrLap:(UIButton *)sender;
- (float) updateTime;

@end
