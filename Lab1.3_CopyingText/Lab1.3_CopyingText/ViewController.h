//
//  ViewController.h
//  Lab1.3_CopyingText
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)copyBtn:(id)sender;

@end

