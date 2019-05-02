//
//  main.m
//  SingletoneDemo
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DBManager.h"

int main(int argc, const char * argv[]) {
    
    DBManager * db1 = [DBManager sharedInstance];
    DBManager * db2 = [DBManager sharedInstance];
    DBManager * db3 = [DBManager sharedInstance];
    DBManager * db4 = [DBManager sharedInstance];
    
    return 0;
}
