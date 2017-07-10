//
//  PaintView.m
//  Finger Paint App
//
//  Created by Errol Cheong on 2017-07-09.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "PaintView.h"
#import "PaintLine.h"

@interface PaintView ()

@property (strong, nonatomic) UIBezierPath *path;

@end

@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _paintLine = [[PaintLine alloc] initWithColor:[UIColor redColor] andWidth:5.0];
        [self setMultipleTouchEnabled:NO];
        _path = [[UIBezierPath alloc] init];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint newPoint = [touch locationInView:self];
    [self.path moveToPoint:newPoint];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint newPoint = [touch locationInView:self];
    [self.path addLineToPoint:newPoint];
    
    [self setNeedsDisplay];
}

 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
     [self.paintLine.strokeColor setStroke];
     [self.path setLineWidth:self.paintLine.strokeWidth];
     
     [self.path stroke];
 }

- (void)clearView{
    [self.path removeAllPoints];
    
    [self setNeedsDisplay];
}

@end
