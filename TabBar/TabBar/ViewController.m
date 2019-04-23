//
//  ViewController.m
//  TabBar
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)goToSecondView:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)goToSecondView:(UIButton *)sender {
    
    SecondViewController* second = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self.navigationController pushViewController:second animated:NO];
    
}
@end
