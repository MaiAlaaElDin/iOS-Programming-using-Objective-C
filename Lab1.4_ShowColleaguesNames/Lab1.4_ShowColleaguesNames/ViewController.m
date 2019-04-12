//
//  ViewController.m
//  Lab1.4_ShowColleaguesNames
//
//  Created by Esraa Hassan on 4/12/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int position;
NSArray *namesArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    namesArray =  [NSArray arrayWithObjects: @"Mai",@"Rokaya",@"Salma",@"Aya", nil];
    NSLog (@"Number of elements in array = %lu", [namesArray count]);
    position = 0;
    _nameLabel.text = namesArray[0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)previousBtn:(id)sender {
    
    position--;
    if(position < 0)
    {
        position = 3;
    }
    _nameLabel.text = namesArray[position];
}

- (IBAction)nextBtn:(id)sender {
    position++;
    if(position >= 4)
    {
        position = 0;
    }
    _nameLabel.text = namesArray[position];
}
@end
