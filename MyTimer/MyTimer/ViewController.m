//
//  ViewController.m
//  MyTimer
//
//  Created by Wu Qian on 12-3-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize leftBtn,rightBtn,label,timer,timestr,timestr_lap, tableview,list_time,list_lap;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    checked = YES;
    time = time_lap = 0;
    list_time = list_lap = nil;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction) startOrstop:(UIButton *)sender
{
    //点击切换按钮背景图
    UIImage *newImage = (checked) ? [UIImage imageNamed:@"red.png"] : [UIImage imageNamed:@"green.png"];
    [leftBtn setBackgroundImage:newImage forState:UIControlStateNormal];
    
    NSString *titlel = (checked) ? (@"Stop") : (@"Start");
    [leftBtn setTitle:titlel forState:UIControlStateNormal];
    NSString *titler = (checked) ? (@"Lap") : (@"Reset");
    [rightBtn setTitle:titler forState:UIControlStateNormal];
  
      
    if (checked)   //start
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 
                                target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    }else {        //stop
        [timer invalidate];
    }
    
    checked = !checked;
}

- (IBAction) resetOrLap:(UIButton *)sender
{
    static NSInteger count = 1;
    
    if (checked) //reset
    {
        time = time_lap = 0.0;
        timestr = [NSString stringWithFormat:@"00:00.0"];
        [label setText:timestr];
        list_time = list_lap = nil;
        count = 1;
        [tableview reloadData];
        
    }else {      //lap
        if (list_time == nil) {
            list_time = [[NSArray alloc]initWithObjects:timestr_lap, nil];
            list_lap = [[NSArray alloc]initWithObjects:[NSString stringWithFormat:@"%d",count++], nil];
        }else {
#if 0
            [list arrayByAddingObject:timestr];
#else
            NSArray *array = [[NSArray alloc]initWithObjects:timestr_lap, nil];
            list_time = [array arrayByAddingObjectsFromArray:list_time];
            array = [[NSArray alloc]initWithObjects:[NSString stringWithFormat:@"%d",count++], nil];
            list_lap = [array arrayByAddingObjectsFromArray:list_lap];
#endif
        }
        time_lap = 0;
        [tableview reloadData];
     }
}

- (float) updateTime
{
    time+=0.1;
    time_lap +=0.1;
    timestr = [NSString stringWithFormat:@"%02d:%04.1f",(int)(time / 60) ,time - ( 60 * (int)( time / 60 ) )];
    timestr_lap = [NSString stringWithFormat:@"%02d:%04.1f",(int)(time_lap / 60) ,time_lap - ( 60 * (int)( time_lap / 60 ) )];
    [label setText:timestr];
    return time;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list_time count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableViewIdentifier = @"tableViewIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:tableViewIdentifier]; 
    }
    
    NSUInteger row = [indexPath row];
    
    cell.detailTextLabel.text = [list_time objectAtIndex:row];
    cell.detailTextLabel.textColor = [UIColor blackColor];
    cell.detailTextLabel.font = [UIFont boldSystemFontOfSize:25.0];
    cell.detailTextLabel.textAlignment = UITextAlignmentCenter;
    
    NSString *text = [[NSString alloc]initWithFormat:@"lap %@", [list_lap objectAtIndex:row]];
    cell.textLabel.text = text;
    return cell;
}

@end
