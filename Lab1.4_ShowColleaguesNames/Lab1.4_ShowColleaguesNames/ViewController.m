//
//  ViewController.m
//  Lab1.4_ShowColleaguesNames
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController
NSArray *namesArray;
int position = 0;

-(void) init{

     namesArray =  @[@"Mai",@"Rokaya",@"Sahar",@"Aya"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _Name.text = namesArray[0];
}


- (IBAction)Previous:(id)sender {
    position--;
    if(position > 0)
    {
        _Name.text = namesArray[position];
    }
}

- (IBAction)Next:(id)sender {
    position++;
    if(position < 4)
    {
        _Name.text = namesArray[position];
    }
    
}
@end
