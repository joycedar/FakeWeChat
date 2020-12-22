//
//  FWCHomeViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCHomeViewController.h"
#import "FWCLog.h"
#import "UITabBarItem+FWCBadge.h"

@interface FWCHomeViewController ()

@property(nonatomic, strong) FWCBadge *badge;

@end

@implementation FWCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fwc_tabBarItem.fwc_badgeValue = 99;

    QMUIButton *addButton = [QMUIButton.alloc qmui_initWithImage:nil title:@"增加"];
    QMUIButton *subButton = [QMUIButton.alloc qmui_initWithImage:nil title:@"减少"];
    [self.view addSubview:addButton];
    [self.view addSubview:subButton];
    addButton.centerY = subButton.centerY = self.view.centerY;
    addButton.centerX = 100;
    subButton.centerX = 300;

    addButton.height = subButton.height = 100;
    addButton.width = subButton.width = 100;

    [addButton addTarget:self action:@selector(addBadgeValue) forControlEvents:UIControlEventTouchUpInside];
    [subButton addTarget:self action:@selector(subBadgeValue) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addBadgeValue {
    self.fwc_tabBarItem.fwc_badgeValue++;
}

- (void)subBadgeValue {
    self.fwc_tabBarItem.fwc_badgeValue--;
}

@end
