//
//  PaintLine.m
//  Finger Paint App
//
//  Created by Errol Cheong on 2017-07-09.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "PaintLine.h"

@implementation PaintLine

- (instancetype)initWithColor:(UIColor*)color andWidth:(CGFloat)width
{
    self = [super init];
    if (self) {
        _strokeColor = color;
        _strokeWidth = width;
        _paintLineArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
