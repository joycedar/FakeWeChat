//
//  FWCBadge.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCBadge.h"
#import "FWCUI.h"

@implementation FWCBadge

- (instancetype)init {
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = FWCHexColor(@"FF5050");
        self.textColor = UIColor.whiteColor;
        self.font = UIFontMake(12);
        self.contentEdgeInsets = UIEdgeInsetsMake(2, 6, 2, 6);
    }
    return self;
}

- (void)setValue:(int)value {
    _value = value;
    self.text = [NSString stringWithFormat:@"%d", value];
#warning TODO
    // 超过99显示三个点

    [self sizeToFit];
    self.layer.cornerRadius = MIN(self.height / 2, self.width / 2);
}

@end
