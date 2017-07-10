//
//  PaintLine.h
//  Finger Paint App
//
//  Created by Errol Cheong on 2017-07-09.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PaintLine : NSObject

@property (strong, nonatomic) UIColor *strokeColor;
@property (assign, nonatomic) CGFloat strokeWidth;
@property (strong, nonatomic) NSMutableArray *paintLineArray;


- (instancetype)initWithColor:(UIColor*)color andWidth:(CGFloat)width;

@end
