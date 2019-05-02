//
//  ViewController.m
//  SaveAndGetDataWithNSCoding
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"
#import "Friend.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *ageText;
@property (weak, nonatomic) IBOutlet UITextField *genderText;
- (IBAction)save:(UIButton *)sender;
- (IBAction)get:(UIButton *)sender;


@end

@implementation ViewController
{
    Friend* myFriend;
    NSData* data;
    NSData* friendData;
    NSUserDefaults* defaults;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myFriend = [Friend new];
    [myFriend setName:@"MyFriend"];
    
}


- (IBAction)save:(UIButton *)sender {
    myFriend.name =_nameText.text;
    myFriend.age = [_ageText.text intValue];
    myFriend.gender = _genderText.text;
    data = [NSKeyedArchiver archivedDataWithRootObject:myFriend];
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"FriendObject"];
    _nameText.text = @"";
    _ageText.text = @"";
    _genderText.text = @"";
    
}

- (IBAction)get:(UIButton *)sender {
    friendData = [defaults objectForKey:@"FriendObject"];
    Friend *savedFriend = [NSKeyedUnarchiver unarchiveObjectWithData:friendData];
    _nameText.text = myFriend.name;
    NSString* ageStr = [NSString stringWithFormat:@"%d",myFriend.age];
    _ageText.text  = ageStr;
    _genderText.text = myFriend.gender ;
}
@end
