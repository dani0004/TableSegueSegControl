//
//  AppDelegate.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-21.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import "AppDelegate.h"
#import "RegionsViewController.h"
#import "RegionalViewController.h"
#import "Region.h"

@implementation AppDelegate
{
    NSMutableArray *_regions;
   //  NSMutableArray *_regional;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
   // self.window.backgroundColor = [UIColor whiteColor];
   // [self.window makeKeyAndVisible];
    _regions = [NSMutableArray arrayWithCapacity:20];
  
    
    Region *region = [[Region alloc] init];
    region.regionName = @"West144";
    region.regionStat1 = @"Hospitals:";
    region.regionStat2 = @"Community Centers:";
    
    [_regions addObject:region];
    
     region = [[Region alloc] init];
    region.regionName = @"Center144";
    region.regionStat1 = @"Hospitals:";
    region.regionStat2 = @"Community Centers:";
    
    [_regions addObject:region];
    
     region = [[Region alloc] init];
    region.regionName = @"Center-West144";
    region.regionStat1 = @"Hospitals:";
    region.regionStat2 = @"Community Centers:";
    
    [_regions addObject:region];
    
    
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    RegionsViewController *regionsViewController = [navigationController viewControllers][0];
    
    regionsViewController.regions = _regions;
    
  
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
