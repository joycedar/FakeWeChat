//
//  FWCBaseNavigationController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCBaseNavigationController.h"

@implementation FWCBaseNavigationController

- (void)didInitialize {
    [super didInitialize];
    self.view.backgroundColor = FWCColor.background;

    self.navigationBar.translucent = NO;
}

@end
