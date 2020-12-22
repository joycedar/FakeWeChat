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
    self.fwc_tabBarItem.fwc_badgeValue = 200;
}

@end
