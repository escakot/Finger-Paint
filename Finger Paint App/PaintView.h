//
//  PaintView.h
//  Finger Paint App
//
//  Created by Errol Cheong on 2017-07-09.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PaintLine;
@interface PaintView : UIView

@property (strong, nonatomic) PaintLine *paintLine;
- (void) clearView;


@end
