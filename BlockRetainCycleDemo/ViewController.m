//
//  ViewController.m
//  BlockRetainCycleDemo
//
//  Created by yuedongkui on 2017/1/19.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
- (IBAction)buttonClick:(id)sender {
    SecondViewController *v = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:v animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
