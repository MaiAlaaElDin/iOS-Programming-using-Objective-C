//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by JETS Mobile Lab on 4/24/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_myScrollView setScrollEnabled:true];
    _myScrollView.contentSize = CGSizeMake(700, 700);
}


@end
