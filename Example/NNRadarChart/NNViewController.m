//
//  NNViewController.m
//  NNRadarChart
//
//  Created by Koichi Yamamoto on 05/18/2016.
//  Copyright (c) 2016 Koichi Yamamoto. All rights reserved.
//

#import "NNViewController.h"
#import <NNRadarChart.h>

@implementation NNViewController{
    __weak IBOutlet NNRadarChart* _chart;
//    __weak IBOutlet UIView* hoge;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSLog(@"%@", NSStringFromCGRect(_chart.bounds));
}

-(IBAction)onUpdateButtonTap:(id)sender{
    _chart.dataSeries = @[@[@(0),@(0),@(0),@(5),@(0)]];
    [_chart setNeedsDisplay];
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%@", NSStringFromCGRect(_chart.bounds));
    _chart.maxValue = 5;
    _chart.minValue = 0;
    _chart.dataSeries = @[@[@(0),@(5),@(4),@(3),@(5)]];
    _chart.steps = 5;
    _chart.attributes = @[@"attack",@"defense",@"speed",@"HP",@"MP"];
    [_chart setNeedsDisplay];
}

-(void)viewDidLayoutSubviews{
        NSLog(@"%@", NSStringFromCGRect(_chart.bounds));
}

@end
