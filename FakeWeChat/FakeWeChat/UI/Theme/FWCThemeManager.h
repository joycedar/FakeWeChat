//
//  FWCThemeManager.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#import "FWCAppLifeCycleProvider.h"
#import "Singleton.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const FWCThemeIdentifierDefault;
extern NSString *const FWCThemeIdentifierDark;

@interface FWCThemeManager : NSObject <FWCAppLifeCycleProtocol>

SINGLETON_DEF

@property(nonatomic, assign) BOOL respondsSystemStyleAutomatically;

@property(nonatomic, readonly) BOOL isDark;

@end

NS_ASSUME_NONNULL_END
