//
//  ViewController.m
//  ColumnarDemo
//
//  Created by XSX on 16/3/14.
//  Copyright © 2016年 hivebox. All rights reserved.
//

#import "ViewController.h"
#import "ColumarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ColumarView *columar = [[ColumarView alloc] init];
    columar.frame = CGRectMake(50, 100, 300, 200);
    columar.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:columar];
    // Do any additional setup after loading the view, typically from a nib.
}

@end
