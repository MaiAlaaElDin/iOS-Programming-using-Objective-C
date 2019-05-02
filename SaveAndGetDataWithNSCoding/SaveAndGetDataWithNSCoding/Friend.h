//
//  Friend.h
//  SaveAndGetDataWithNSCoding
//
//  Created by JETS Mobile Lab on 5/2/19.
//  Copyright © 2019 MaiAlaa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Friend : NSObject <NSCoding>

@property NSString* name;
@property int age;
@property NSString* gender;

@end

NS_ASSUME_NONNULL_END
