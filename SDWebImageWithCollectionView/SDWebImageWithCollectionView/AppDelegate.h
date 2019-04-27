//
//  AppDelegate.h
//  SDWebImageWithCollectionView
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Mai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

