//
//  FWCBaseTableViewCell.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/23.
//

#import "FWCBaseTableViewCell.h"
#import "FWCUI.h"

@interface FWCBaseTableViewCell ()

@property(nonatomic, strong) UIImageView *arrowView;

@property(nonatomic, strong) QMUILabel *titleLabel;

@end

@implementation FWCBaseTableViewCell

// 子类重写这个方法供TableView调用
+ (CGFloat)cellHeight {
    return 56;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = FWCColor.cellBackground;
    }
    return self;
}

- (UIImageView *)arrowView {
    if (_arrowView) {
        return _arrowView;
    } else {
        _arrowView = [UIImageView.alloc initWithImage:[UIImage imageNamed:@"cell_arrow"]];
        return _arrowView;
    }
}

- (void)setArrowViewToDefaultPosition {
    if (![self.contentView.subviews containsObject:self.arrowView]) {
        [self.contentView addSubview:self.arrowView];
    }
}

- (void)setTitle:(NSString *)title {
    _title = title;
    if (!_titleLabel) {
        _titleLabel = QMUILabel.alloc.init;
        _titleLabel.font = UIFontMake(20);
        _titleLabel.textColor = FWCColor.normalText;
    }
    _titleLabel.text = title;
    [_titleLabel sizeToFit];
}

- (void)setTitleToDefaultPosition {
    if (![self.contentView.subviews containsObject:_titleLabel]) {
        [self.contentView addSubview:_titleLabel];
    }
}

@end
