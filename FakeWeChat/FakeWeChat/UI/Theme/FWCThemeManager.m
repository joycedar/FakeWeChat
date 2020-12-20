//
//  FWCThemeManager.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#import "FWCThemeManager.h"
#import "FWCLog.h"
#import <QMUIKit/QMUITheme.h>

NSString *const FWCThemeIdentifierDefault = @"FWCThemeIdentifierDefault";
NSString *const FWCThemeIdentifierDark = @"FWCThemeIdentifierDark";

NSString *const FWCSelectedThemeIdentifier = @"FWCSelectedThemeIdentifier";

@implementation FWCThemeManager

+ (void)load {
    [FWCAppLifeCycleProvider.sharedInstance addListener:FWCThemeManager.sharedInstance];
}

SINGLETON_IMP

- (void)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleThemeDidChangeNotification:)
                                                 name:QMUIThemeDidChangeNotification
                                               object:nil];

    // 由于微信只有普通、黑夜两种模式
    // 所以不使用QMUIConfigurationTemplate（主题配置表）
    // 但是FWCThemeIdentifier需要向QMUIThemeManager注册
    QMUIThemeManagerCenter.defaultThemeManager.themeGenerator =
        ^__kindof NSObject *_Nonnull(NSString *_Nonnull identifier) {
        if ([identifier isEqualToString:FWCThemeIdentifierDefault]) return FWCThemeIdentifierDefault;
        if ([identifier isEqualToString:FWCThemeIdentifierDark]) return FWCThemeIdentifierDark;
        return nil;
    };

    if (@available(iOS 13.0, *)) {
        QMUIThemeManagerCenter.defaultThemeManager.identifierForTrait =
            ^__kindof NSObject<NSCopying> *_Nonnull(UITraitCollection *_Nonnull trait) {
            if (trait.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return FWCThemeIdentifierDark;
            }
            return FWCThemeIdentifierDefault;
        };
        QMUIThemeManagerCenter.defaultThemeManager.respondsSystemStyleAutomatically = YES;
    }
}

- (void)handleThemeDidChangeNotification:(NSNotification *)notification {

    FWCInfo(@"Theme changed to %@", QMUIThemeManagerCenter.defaultThemeManager.currentTheme);

    QMUIThemeManager *manager = notification.object;
    if (![manager.name isEqual:QMUIThemeManagerNameDefault]) return;

    [[NSUserDefaults standardUserDefaults] setObject:manager.currentThemeIdentifier forKey:FWCSelectedThemeIdentifier];
}

- (BOOL)respondsSystemStyleAutomatically {
    return QMUIThemeManagerCenter.defaultThemeManager.respondsSystemStyleAutomatically;
}

- (void)setRespondsSystemStyleAutomatically:(BOOL)respondsSystemStyleAutomatically {
    QMUIThemeManagerCenter.defaultThemeManager.respondsSystemStyleAutomatically = respondsSystemStyleAutomatically;
}

- (BOOL)isDark {
    return QMUIThemeManagerCenter.defaultThemeManager.currentThemeIdentifier == FWCThemeIdentifierDark;
}

@end
