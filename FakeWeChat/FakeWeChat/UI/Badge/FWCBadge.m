//
//  FWCBadge.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCBadge.h"
#import "FWCLog.h"
#import "FWCUI.h"

#define FWCBadgeBackgroundColor FWCHexColor(@"FF5050")

@interface FWCBadgeMaskView : UIView

@end

@implementation FWCBadgeMaskView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = FWCBadgeBackgroundColor;

        for (int i = 0; i < 3; i++) {
            UIView *point = self.genWhitePoint;
            [self addSubview:point];
            point.centerY = self.centerY;
            point.centerX = 3 + (self.width - 6) / 4 * (i + 1);
        }
    }
    return self;
}

- (UIView *)genWhitePoint {
    UIView *point = UIView.alloc.init;
    point.backgroundColor = UIColor.whiteColor;
    point.width = 2;
    point.height = 2;
    point.layer.cornerRadius = 1;
    return point;
}

@end

@interface FWCBadge ()

@property(nonatomic, strong) FWCBadgeMaskView *maskView;

@property(nonatomic, assign) BOOL showMask;

@end

@implementation FWCBadge

- (instancetype)init {
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = FWCBadgeBackgroundColor;
        self.textColor = UIColor.whiteColor;
        self.font = UIFontMake(12);
        self.contentEdgeInsets = UIEdgeInsetsMake(2, 6, 2, 6);
    }
    return self;
}

- (void)setValue:(int)value {
    _value = value;
    if (value <= 0) {
        FWCError(@"Badeg value must up to 1, now is %d.", value);
        self.text = @"0";
    } else if (value < 100) {
        self.showMask = NO;
        self.text = [NSString stringWithFormat:@"%d", value];
    } else {
        self.text = @"101";
    }

    [self sizeToFit];
    self.layer.cornerRadius = MIN(self.height / 2, self.width / 2);

    if (value >= 100) {
        self.showMask = YES;
    }
}

- (BOOL)showMask {
    if (!_maskView) {
        return NO;
    }
    return !_maskView.hidden;
}

- (void)setShowMask:(BOOL)showMask {
    if (_maskView) {
        _maskView.hidden = !showMask;
    } else if (showMask) {
        _maskView = [FWCBadgeMaskView.alloc initWithFrame:self.bounds];
        [self addSubview:_maskView];
    }
}

@end
