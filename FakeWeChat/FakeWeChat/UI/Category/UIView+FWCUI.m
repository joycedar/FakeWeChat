//
//  UIView+FWCUI.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCColor.h"
#import "UIView+FWCUI.h"
#import <QMUIKit/QMUIKit.h>

@implementation UIView (frame)

- (CGFloat)width {
    return self.qmui_width;
}

- (void)setWidth:(CGFloat)width {
    self.qmui_width = width;
}

- (CGFloat)height {
    return self.qmui_height;
}

- (void)setHeight:(CGFloat)height {
    self.qmui_height = height;
}

- (CGFloat)top {
    return self.qmui_top;
}

- (void)setTop:(CGFloat)top {
    self.qmui_top = top;
}

- (CGFloat)left {
    return self.qmui_left;
}

- (void)setLeft:(CGFloat)left {
    self.qmui_left = left;
}

- (CGFloat)bottom {
    return self.qmui_bottom;
}

- (void)setBottom:(CGFloat)bottom {
    self.qmui_bottom = bottom;
}

- (CGFloat)right {
    return self.qmui_right;
}

- (void)setRight:(CGFloat)right {
    self.qmui_right = right;
}

@end
