//
//  AppDelegate.h
//  ObjectiveCTableView
//
//  Created by Matt Mejia on 12/18/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

