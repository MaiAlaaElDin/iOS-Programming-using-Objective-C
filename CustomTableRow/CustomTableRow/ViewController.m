//
//  ViewController.m
//  CustomTableRow
//
//  Created by JETS Mobile Lab on 4/24/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * firstLabelArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    firstLabelArray = @[@"Mai",@"Muhammad",@"Ahmed"];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [firstLabelArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
      UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [firstLabelArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
