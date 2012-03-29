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

@synthesize leftBtn,rightBtn,label,timer,timestr,tableview,list;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    checked = YES;
    time = 0;
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
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    }else {        //stop
        [timer invalidate];
    }
    
    checked = !checked;
}

- (IBAction) resetOrLap:(UIButton *)sender
{
    if (checked) //reset
    {
        time = 0.0;
        timestr = [NSString stringWithFormat:@"00:00.0"];
        [label setText:timestr];
        
    }else {      //lap

        NSArray *array = [[NSArray alloc]initWithObjects:timestr, nil];
        list = array;
        
        UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"wanghua"];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"wanghua"];
        cell.textLabel.text = @"wuqian" ;
     }
}

- (float) updateTime
{
    time+=0.1;
    timestr = [NSString stringWithFormat:@"%02d:%04.1f",(int)(time / 60) ,time - ( 60 * (int)( time / 60 ) )];
    [label setText:timestr];
    return time;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableViewIdentifier = @"tableViewIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewIdentifier]; 
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [list objectAtIndex:row];
    
    return cell;
}

@end
