//
//  ViewController.m
//  FYChartView
//
//  Created by 樊杨 on 2019/11/8.
//  Copyright © 2019 樊杨. All rights reserved.
//

#import "ViewController.h"
#import "FYChartLineView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    FYChartLineView * lineView = [[FYChartLineView alloc]initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 300)];
    [self.view addSubview:lineView];
    
}


@end
