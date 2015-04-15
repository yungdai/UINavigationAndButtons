//
//  AppDelegate.h
//  UINavigationAndButtons
//
//  Created by Yung Dai on 2015-04-15.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController; // Forward Declaration


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
// adding view controller property
@property (strong, nonatomic) ViewController *viewController;


@end

