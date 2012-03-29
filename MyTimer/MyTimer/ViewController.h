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
    float time_lap;
}

@property (strong,nonatomic) IBOutlet UIButton *leftBtn, *rightBtn;
@property (strong,nonatomic) IBOutlet UILabel *label;
@property (strong) NSTimer *timer;
@property (strong,nonatomic) NSString *timestr;
@property (strong,nonatomic) NSString *timestr_lap;
@property (strong,nonatomic) IBOutlet UITableView *tableview;
@property (strong,nonatomic) NSArray *list_time;
@property (strong,nonatomic) NSArray *list_lap;
- (IBAction) startOrstop:(UIButton *)sender;
- (IBAction) resetOrLap:(UIButton *)sender;
- (float) updateTime;

@end
