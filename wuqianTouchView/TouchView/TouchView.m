//
//  TouchView.m
//  TouchView
//
//  Created by Wu Qian on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView
@synthesize points,paint_clr;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        paint_clr = [UIColor greenColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    if ((!self.points) || (self.points.count < 2)) {
        return;
    }
      
    context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 5.0f);
    
    //[[UIColor blueColor]set ];
    [paint_clr set];

    //画上次
    if (cnt != 0) {
        for (int i=0; i < (begin-1); i++) {
            CGPoint point1 = [[self.points objectAtIndex:i] CGPointValue];
            CGPoint point2 = [[self.points objectAtIndex:(i+1)] CGPointValue];
            CGContextMoveToPoint(context, point1.x, point1.y);
            CGContextAddLineToPoint(context, point2.x, point2.y);
            CGContextStrokePath(context);
        }
        
    }
    
    //画这次
    for (int i = begin;i < (self.points.count-1);i++)
    {
        CGPoint point1 = [[self.points objectAtIndex:i] CGPointValue];
        CGPoint point2 = [[self.points objectAtIndex:(i+1)] CGPointValue];
        CGContextMoveToPoint(context, point1.x, point1.y);
        CGContextAddLineToPoint(context, point2.x, point2.y);
        CGContextStrokePath(context);
    }
    
}

//不支持多点触摸
- (BOOL) isMultipleTouchEnabled
{
    return NO;
}

//创建一个array，并且记录初始ponit
- (void) touchesBegan:(NSSet *) touches withEvent:(UIEvent *) event
{
    begin = self.points.count; 
    NSLog(@"begin = %d",begin);
    
    if (!self.points) {
       self.points = [NSMutableArray array];
    }
    CGPoint pt = [[touches anyObject] locationInView:self];
    [self.points addObject:[NSValue valueWithCGPoint:pt]];
}

//移动过程中记录这些points
//调用setNeedsDisplay，会触发drawRect方法的调用
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint pt = [[touches anyObject] locationInView:self];
    [self.points addObject:[NSValue valueWithCGPoint:pt]];
    
    //
    cnt = self.points.count - begin;
    NSLog(@" cnt = : %d ",cnt);
    
    [self setNeedsDisplay];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    stop = self.points.count;
    NSLog(@"stop = %d",stop);
}
@end
