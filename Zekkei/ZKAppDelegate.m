//
//  ZKAppDelegate.m
//  Zekkei
//
//  Created by Seki Haruyuki on 10/16/11.
//  Copyright (c) 2011 Georepublic Japan. All rights reserved.
//

#import "ZKAppDelegate.h"

#import "ZKFeedViewController.h"
#import "ZKSearchViewController.h"
#import "ZKSendViewController.h"
#import "ZKProfileViewController.h"

@implementation ZKAppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *viewController1, *viewController2,*viewController3,*viewController4;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        viewController1 = [[ZKFeedViewController alloc] initWithNibName:@"ZKFeedViewController_iPhone" bundle:nil];
        viewController2 = [[ZKSearchViewController alloc] initWithNibName:@"ZKSearchViewController_iPhone" bundle:nil];
        viewController3 = [[ZKSendViewController alloc] initWithNibName:@"ZKSendViewController" bundle:nil];
        viewController4 = [[ZKProfileViewController alloc] initWithNibName:@"ZKProfileViewController" bundle:nil];
    } else {
        viewController1 = [[ZKFeedViewController alloc] initWithNibName:@"ZKFeedViewController_iPad" bundle:nil];
        viewController2 = [[ZKSearchViewController alloc] initWithNibName:@"ZKSearchViewController_iPad" bundle:nil];
        viewController3 = [[ZKSendViewController alloc] initWithNibName:@"ZKSendViewController" bundle:nil];
        viewController4 = [[ZKProfileViewController alloc] initWithNibName:@"ZKProfileViewController" bundle:nil];
    }
    UINavigationController *navCtrl1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    UINavigationController *navCtrl2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
    UINavigationController *navCtrl3 = [[UINavigationController alloc] initWithRootViewController:viewController3];
    UINavigationController *navCtrl4 = [[UINavigationController alloc] initWithRootViewController:viewController4];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:navCtrl1, navCtrl2,navCtrl3,navCtrl4, nil];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
