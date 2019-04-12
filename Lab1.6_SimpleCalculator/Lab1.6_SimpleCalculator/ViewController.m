//
//  ViewController.m
//  Lab1.6_SimpleCalculator
//
//  Created by Esraa Hassan on 4/12/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

float result;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _operationsSymbol.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)add:(id)sender {
     _operationsSymbol.text = @"+";
    result = _firstInput.text.floatValue + _secondInput.text.floatValue;
    _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    
}

- (IBAction)subtract:(id)sender {
    _operationsSymbol.text = @"-";
    result = [_firstInput.text floatValue] - [_secondInput.text floatValue];
     _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
}

- (IBAction)multiply:(id)sender {
    _operationsSymbol.text = @"*";
    result = _firstInput.text.floatValue * _secondInput.text.floatValue;
    _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    
}

- (IBAction)divide:(id)sender {
    _operationsSymbol.text = @"/";
    if(_secondInput.text != 0)
    {
        result = _firstInput.text.floatValue / _secondInput.text.floatValue;
        _resultLabel.text = [NSString stringWithFormat:@"%.3f", result];
    }
    else{
        _resultLabel.text = @"ERROR!";
    }
}
@end
