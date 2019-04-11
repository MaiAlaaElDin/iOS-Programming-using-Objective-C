//
//  ViewController.h
//  Lab1.4_ShowColleaguesNames
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
-(void) init;
@property (weak, nonatomic) IBOutlet UILabel *Name;
- (IBAction)Previous:(id)sender;

- (IBAction)Next:(id)sender;

@end

