//
//  AppDelegate.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/17.
//

#import "AppDelegate.h"
#import "FWCTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = FWCTabBarController.alloc.init;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
