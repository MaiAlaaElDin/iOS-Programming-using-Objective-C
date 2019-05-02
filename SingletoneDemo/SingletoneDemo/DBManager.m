//
//  DBManager.m
//  SingletoneDemo
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager

static int counter = 0;

+(DBManager*) sharedInstance{
    
    static DBManager* dbMgr;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        dbMgr = [[DBManager alloc]init];
        printf("Object Created\n");
    });
    
    return dbMgr;
}

- (id)init {
    if (self = [super init]) {
        // Initialize self
        counter++;
        printf("No. of objects created: %d\n", counter);
    }
    return self;
}



@end
