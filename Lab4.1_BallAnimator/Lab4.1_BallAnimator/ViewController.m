//
//  ViewController.m
//  Lab4.1_BallAnimator
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _ball.backgroundColor = [UIColor purpleColor];
    _ball.layer.cornerRadius = 25;
    _ball.layer.borderColor = [UIColor blackColor].CGColor;
    _ball.layer.borderWidth = 1;
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    [self animation];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)animation{
    //Add Gravity to animator object
    UIGravityBehavior* gravity = [[UIGravityBehavior alloc]initWithItems:@[_ball]];
    [_animator addBehavior:gravity];
    
    //Add Collision to animator object
    UICollisionBehavior* collision = [[UICollisionBehavior alloc] initWithItems:@[_ball]];
    
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];

    //To do specific action when the ball collides

    collision.collisionDelegate = self;
    [_animator addBehavior:collision];
    _flag = true;
    
    //Add Elasticity and Resistance to animator object
    UIDynamicItemBehavior * item = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball]];
    item.elasticity = 1;
    item.resistance = 1;
    [_animator addBehavior:item];
    
}

-(void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
    if(_flag == true)
    {
        _ball.backgroundColor =[UIColor redColor];
        _flag = false;
    }
    else{
        _ball.backgroundColor =[UIColor purpleColor];
        _flag = true;
        
    }
}


@end
