//
//  ViewController.h
//  Lab1.6_SimpleCalculator
//
//  Created by Esraa Hassan on 4/12/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstInput;

@property (weak, nonatomic) IBOutlet UITextField *secondInput;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (strong, nonatomic) IBOutlet UIView *operationLabel;

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;

- (IBAction)multiply:(id)sender;


- (IBAction)divide:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *operationsSymbol;


@end

