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
    
    NSArray *a1 = @[@(0),@(5),@(4),@(3),@(5)];
    NSArray *a2 = @[@(3),@(2),@(4),@(0),@(1)];
    _chart.dataSeries = @[a1, a2];
    
    _chart.backgroundLineColorRadial = [UIColor lightGrayColor];
    _chart.maxValue = 5;
    _chart.minValue = 0;
    _chart.steps = 5;
    _chart.fillArea = YES;
    _chart.colorOpacity = 0.5f;
    _chart.attributes = @[@"朝の気分",@"朝食の摂取",@"朝の活動性",@"昼寝の時間と回数",@"寝付き"];
    
    _chart.showLegend = YES;
    [_chart setTitles:@[@"1回目", @"2回目"]];
    [_chart setColors:@[[UIColor redColor],[UIColor blackColor]]];
    
    [_chart setNeedsDisplay];
}

@end
