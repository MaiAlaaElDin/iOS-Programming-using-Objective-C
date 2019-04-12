//
//  ViewController.h
//  Lab1.5_Validation
//
//  Created by Esraa Hassan on 4/12/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usertext;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)textTestBtn:(id)sender;
- (IBAction)numTestBtn:(id)sender;

@end

