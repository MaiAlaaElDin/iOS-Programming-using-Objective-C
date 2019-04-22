//
//  ViewController.h
//  Lab4.1_BallAnimator
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property bool flag;
-(void)animation;

@end

