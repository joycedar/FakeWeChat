//
//  FWCThemeProvider.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCThemeProvider : NSObject

+ (UIColor *)colorWithDefaultColor:(UIColor *)defaultColor darkColor:(UIColor *)darkColor;

+ (UIImage *)imageWithDefaultName:(NSString *)defaultName darkName:(NSString *)darkName;

@end

NS_ASSUME_NONNULL_END
