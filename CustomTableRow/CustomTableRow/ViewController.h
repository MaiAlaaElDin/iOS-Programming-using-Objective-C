//
//  ViewController.h
//  CustomTableRow
//
//  Created by JETS Mobile Lab on 4/24/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

