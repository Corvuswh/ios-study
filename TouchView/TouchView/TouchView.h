//
//  TouchView.h
//  TouchView
//
//  Created by Wu Qian on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchView : UIView
{
    NSMutableArray *points;
    NSArray *points_all;
    CGContextRef context;
    UIColor *paint_clr;
    NSInteger stop,begin,cnt;
}
@property (strong,nonatomic) NSMutableArray *points;
@property (strong,nonatomic) UIColor *paint_clr;

@end
