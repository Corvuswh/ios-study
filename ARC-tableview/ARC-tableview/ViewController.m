//
//  ViewController.m
//  ARC-tableview
//
//  Created by Wu Qian on 12-3-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mtableview,list;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc]initWithObjects:@"NO.1",@"NO.2",@"NO.3",@"NO.4",@"NO.5",@"NO.6", nil];
    list = array;
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

//数据源委托
//tableView一共有多少行数据
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

//每行数据的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableViewIdentifier = @"tableViewIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault 
                                     reuseIdentifier:tableViewIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [list objectAtIndex:row];
    
    //添加图片
    UIImage *image = [UIImage imageNamed:@"1.png"];
    [cell.imageView setImage:image];
    
    return cell;
}

@end
