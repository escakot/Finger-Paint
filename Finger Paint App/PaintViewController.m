//
//  PaintViewController.m
//  Finger Paint App
//
//  Created by Errol Cheong on 2017-07-09.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "PaintViewController.h"
#import "PaintView.h"
#import "PaintLine.h"

@interface PaintViewController ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *colorButton;
@property (strong, nonatomic) PaintView *paintView;

@end

@implementation PaintViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view = [[PaintView alloc] init];
    for (UIView* button in self.colorButton) {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeStrokeColor:)];
        [button addGestureRecognizer:tapGesture];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)changeStrokeColor:(UITapGestureRecognizer*)sender{
    UIColor* newStrokeColor = sender.view.backgroundColor;
    self.view.paintLine 
}

@end
