//
//  FWCThemeProvider.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCThemeProvider.h"
#import "FWCThemeManager.h"
#import <QMUIKit/QMUIKit.h>

@implementation FWCThemeProvider

+ (UIColor *)colorWithDefaultColor:(UIColor *)defaultColor darkColor:(UIColor *)darkColor {
    return [UIColor qmui_colorWithThemeProvider:^UIColor *_Nonnull(__kindof QMUIThemeManager *_Nonnull manager,
                                                                   __kindof NSObject<NSCopying> *_Nullable identifier,
                                                                   __kindof NSObject *_Nullable theme) {
        if ([identifier isEqual:FWCThemeIdentifierDark]) {
            return darkColor;
        } else {
            return defaultColor;
        }
    }];
}

+ (UIImage *)imageWithDefaultName:(NSString *)defaultName darkName:(NSString *)darkName {
    return [UIImage qmui_imageWithThemeProvider:^UIImage *_Nonnull(__kindof QMUIThemeManager *_Nonnull manager,
                                                                   __kindof NSObject<NSCopying> *_Nullable identifier,
                                                                   __kindof NSObject *_Nullable theme) {
        if ([identifier isEqual:FWCThemeIdentifierDark]) {
            return [UIImage imageNamed:darkName];
        } else {
            return [UIImage imageNamed:defaultName];
        }
    }];
}

@end
