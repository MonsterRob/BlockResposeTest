//
//  ViewController.m
//  BlockResposeTest
//
//  Created by 王召洲 on 2016/10/13.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float x = [NSObject caculatorWith:^(CMaker *make) {
        
        make.add(2).multi(4).add(2);
    }];
    NSLog(@"res --> %g",x);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
