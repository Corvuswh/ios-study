//
//  ViewController.m
//  StopWatch
//
//  Created by Wu Qian on 12-3-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
 
@end

@implementation ViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //初始化checked
    checked = YES; 
    
    time = 0.0;
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

- (IBAction):setRed:(UIButton *)sender
{
    //与其创建2个UIImage,通过checked来控制加载哪个，不如用checked控制创建哪个UIImage
    UIImage *newImage = (checked) ? [UIImage imageNamed:@"red.png"] : [UIImage imageNamed:@"green.png"];
    [button1 setBackgroundImage:newImage forState:UIControlStateNormal];
    
    NSString *title1 = (checked) ? (@"停止") : (@"启动");
    [button1 setTitle:title1 forState:UIControlStateNormal];
    
    NSString *title2 = (checked) ? (@"计次") : (@"复位");
    [button2 setTitle:title2 forState:UIControlStateNormal];
    
    if (checked)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    }else {
        [timer invalidate];
    }
  
    checked = !checked;
}

- (int)updateTime
{
    time+=0.1;
    timestr = [NSString stringWithFormat:@"%02d:%04.1f",(int)(time / 60) ,time - ( 60 * (int)( time / 60 ) )];
    [label setText:timestr];
    return 0;
}

- (IBAction)cleanHistory:(UIButton *)sender
{
    if (checked) //显示复位按键
    {
        time = 0.0;
        timestr = @"00:00.0";
        [label setText:timestr];

    }else {      //显示计次按键

        
    }
}

@end
