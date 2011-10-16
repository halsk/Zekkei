//
//  ZKAppDelegate.h
//  Zekkei
//
//  Created by Seki Haruyuki on 10/16/11.
//  Copyright (c) 2011 Georepublic Japan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZKAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
