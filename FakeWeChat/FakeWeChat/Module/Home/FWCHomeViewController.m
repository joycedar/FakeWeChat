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

    UIView *view = [UIView.alloc initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 100, 100, 100)];
    view.backgroundColor = UIColor.redColor;
    [self.view addSubview:view];

    UITabBarItem *item = self.navigationController.tabBarItem;
    item.fwc_badgeValue = 50;
}

@end
