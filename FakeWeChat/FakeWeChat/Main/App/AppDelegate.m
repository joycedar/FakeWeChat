//
//  AppDelegate.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/17.
//

#import "AppDelegate.h"
#import "FWCAppLifeCycleProvider.h"
#import "FWCTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    [FWCAppLifeCycleProvider.sharedInstance application:application willFinishLaunchingWithOptions:launchOptions];
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = FWCTabBarController.alloc.init;
    [self.window makeKeyAndVisible];

    [FWCAppLifeCycleProvider.sharedInstance application:application didFinishLaunchingWithOptions:launchOptions];

    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationDidBecomeActive:application];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationWillResignActive:application];
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationDidReceiveMemoryWarning:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationWillTerminate:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [FWCAppLifeCycleProvider.sharedInstance applicationWillEnterForeground:application];
}

@end
