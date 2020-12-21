//
//  UITabBarItem+Badge.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/21.
//

#import "FWCLog.h"
#import "FWCUI.h"
#import "UITabBarItem+FWCBadge.h"

static char kAssociatedObjectKey_badge;

@implementation UITabBarItem (FWCBadge)

- (FWCBadge *)fwc_badge {
    return (FWCBadge *)objc_getAssociatedObject(self, &kAssociatedObjectKey_badge);
}

- (void)setFwc_badge:(FWCBadge *_Nonnull)badge {
    objc_setAssociatedObject(self, &kAssociatedObjectKey_badge, badge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)fwc_showBadge {
    if (self.fwc_badge) {
        return !self.fwc_badge.hidden;
    } else {
        FWCWarn(@"Badge has not been set.");
        return NO;
    }
}

- (void)setFwc_showBadge:(BOOL)fwc_showBadge {
    if (self.fwc_badge) {
        self.fwc_badge.hidden = !fwc_showBadge;
    } else {
        FWCWarn(@"Badge has not been set.");
    }
}

- (int)fwc_badgeValue {
    if (self.fwc_badge) {
        return self.fwc_badge.value;
    } else {
        FWCWarn(@"Badge has not been set.");
        return 0;
    }
}

- (void)setFwc_badgeValue:(int)fwc_badgeValue {
    if (self.fwc_badge) {
        self.fwc_badge.value = fwc_badgeValue;
    } else {
        self.fwc_badge = FWCBadge.alloc.init;
        [self.qmui_view addSubview:self.fwc_badge];
        [self.fwc_badge mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.qmui_view).offset(-12);
            make.left.equalTo(self.qmui_view.mas_centerX).offset(11);
        }];
        self.fwc_badge.value = fwc_badgeValue;
    }
}

@end
