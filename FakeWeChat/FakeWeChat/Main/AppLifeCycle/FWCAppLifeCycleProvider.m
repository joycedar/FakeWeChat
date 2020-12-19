//
//  FWCAppLifeCycle.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#import "FWCAppLifeCycleProvider.h"

@interface FWCAppLifeCycleProvider ()

@property(nonatomic, strong) NSMutableArray<id<FWCAppLifeCycleProtocol>> *modules;

@end

@implementation FWCAppLifeCycleProvider

SINGLETON_IMP

- (instancetype)init {
    self = [super init];
    if (self) {
        _modules = NSMutableArray.array;
    }
    return self;
}

- (void)addListener:(id<FWCAppLifeCycleProtocol>)module {
    if (module) {
        [_modules addObject:module];
    }
}

- (void)provideLifeCycle:(SEL)sel block:(void (^)(id<FWCAppLifeCycleProtocol> module))block {
    for (id<FWCAppLifeCycleProtocol> module in _modules) {
        if ([module respondsToSelector:sel]) {
            block(module);
        }
    }
}

- (void)application:(UIApplication *)application
    willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module application:application willFinishLaunchingWithOptions:launchOptions];
                     }];
}

- (void)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module application:application didFinishLaunchingWithOptions:launchOptions];
                     }];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationDidBecomeActive:application];
                     }];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationWillResignActive:application];
                     }];
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationDidReceiveMemoryWarning:application];
                     }];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationWillTerminate:application];
                     }];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationDidEnterBackground:application];
                     }];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self provideLifeCycle:_cmd
                     block:^(id<FWCAppLifeCycleProtocol> module) {
                         [module applicationWillEnterForeground:application];
                     }];
}

@end
