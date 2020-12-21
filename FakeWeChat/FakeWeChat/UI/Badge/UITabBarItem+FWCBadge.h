//
//  UITabBarItem+Badge.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/21.
//

#import "FWCBadge.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBarItem (FWCBadge)

@property(nonatomic, readonly) FWCBadge *fwc_badge;

@property(nonatomic, assign) BOOL fwc_showBadge;

@property(nonatomic, assign) int fwc_badgeValue;

@end

NS_ASSUME_NONNULL_END
