//
//  ViewController.h
//  ARC-tableview
//
//  Created by Wu Qian on 12-3-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UITableView *mtableview;
@property (strong,nonatomic) NSArray *list; //存储列表数据

@end
