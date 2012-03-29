//
//  ViewController.h
//  TableviewDemo
//
//  Created by Wu Qian on 12-3-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //存储列表数据的数组
    NSArray *list;
    
    IBOutlet UITableView *tableview, *tb1;
}

@end
