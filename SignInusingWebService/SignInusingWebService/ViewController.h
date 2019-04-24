//
//  ViewController.h
//  SignInusingWebService
//
//  Created by Esraa Hassan on 4/23/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *nameTF;


- (IBAction)regBtn:(UIButton *)sender;

@end

