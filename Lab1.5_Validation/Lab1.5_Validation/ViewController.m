//
//  ViewController.m
//  Lab1.5_Validation
//
//  Created by Esraa Hassan on 4/12/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSCharacterSet *userInput;
NSCharacterSet *letterCharacterSet;
NSCharacterSet *digitCharacterSet;
NSRange searchRange;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    letterCharacterSet = [NSCharacterSet letterCharacterSet];
    digitCharacterSet = [NSCharacterSet decimalDigitCharacterSet];
    searchRange = NSMakeRange(0, _usertext.text.length);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)textTestBtn:(id)sender {
    
    NSRange myrange = [_usertext.text rangeOfCharacterFromSet:letterCharacterSet];
                                            //options:0 range:searchRange];
    
    if( myrange.location != NSNotFound  )
    {
        _resultLabel.text=@"Yes! It's a text.";
    }
    else{
        _resultLabel.text=@"No! It's a number.";
    }
    
}

- (IBAction)numTestBtn:(id)sender {
    NSRange myrange = [_usertext.text rangeOfCharacterFromSet:digitCharacterSet];
    // options:0 range:searchRange
    
    if( myrange.location != NSNotFound  )
    {
        _resultLabel.text=@"Yes! It's a number.";
    }
    else{
        _resultLabel.text=@"No! It's a text.";
    }
    
    
}
@end
