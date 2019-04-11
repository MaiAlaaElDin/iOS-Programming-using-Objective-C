//
//  ViewController.m
//  Lab1.3_CopyingText
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
}


- (IBAction)copyBtn:(id)sender {
   _label.text = _textField.text;
    _textField.text = @"";
    
}
@end
