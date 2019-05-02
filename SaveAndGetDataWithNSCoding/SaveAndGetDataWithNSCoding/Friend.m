//
//  Friend.m
//  SaveAndGetDataWithNSCoding
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import "Friend.h"

@implementation Friend

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeInt:_age forKey:@"age"];
    [coder encodeObject:_gender forKey:@"gender"];
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    //self = [super initWithCoder:coder];
    if (self) {
        self.name = [decoder decodeObjectForKey:@"name"];
        self.age = [decoder decodeIntForKey:@"age"];
        self.gender = [decoder decodeObjectForKey:@"gender"];
    }
    return self;
}


@end
