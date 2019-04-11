//
//  ViewController.m
//  Lab1.1_HelloWorld
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _Hey.text=@"";
}


- (IBAction)Say:(id)sender {
     _Hey.text = @"Hello World!";
    
}
@end
