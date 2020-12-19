//
//  FWCAppLifeCycle.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#import "Singleton.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FWCAppLifeCycleProtocol <NSObject>

@optional

- (void)application:(UIApplication *)application
    willFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions
    API_AVAILABLE(ios(6.0));
- (void)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions
    API_AVAILABLE(ios(3.0));

- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillResignActive:(UIApplication *)application;

- (void)applicationDidReceiveMemoryWarning:
    (UIApplication *)application; // try to clean up as much memory as possible. next step is to terminate app
- (void)applicationWillTerminate:(UIApplication *)application;

- (void)applicationDidEnterBackground:(UIApplication *)application API_AVAILABLE(ios(4.0));
- (void)applicationWillEnterForeground:(UIApplication *)application API_AVAILABLE(ios(4.0));

@end

@interface FWCAppLifeCycleProvider : NSObject <FWCAppLifeCycleProtocol>

SINGLETON_DEF

- (void)addListener:(id<FWCAppLifeCycleProtocol>)module;

@end

NS_ASSUME_NONNULL_END
