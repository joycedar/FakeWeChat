//
//  FWCTabBarController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/18.
//

#import "FWCTabBarController.h"

#import "FWCUI.h"

#define kChildClassName @"childClassName"
#define kTitle @"title"
#define kImageName @"imageName"
#define kSelectedImageName @"selectedImageName"

@interface FWCTabBarController ()

@end

@implementation FWCTabBarController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSArray<NSDictionary *> *childrenData = @[
    @{
      kChildClassName : @"ViewController",
      kTitle : @"微信",
      kImageName : @"tabbar_home",
      kSelectedImageName : @"tabbar_home_sel"
    },
    @{
      kChildClassName : @"ViewController",
      kTitle : @"通讯录",
      kImageName : @"tabbar_contact",
      kSelectedImageName : @"tabbar_contact_sel"
    },
    @{
      kChildClassName : @"ViewController",
      kTitle : @"发现",
      kImageName : @"tabbar_discover",
      kSelectedImageName : @"tabbar_discover_sel"
    },
    @{
      kChildClassName : @"ViewController",
      kTitle : @"我",
      kImageName : @"tabbar_me",
      kSelectedImageName : @"tabbar_me_sel"
    },
  ];

  [childrenData
      enumerateObjectsUsingBlock:^(NSDictionary *_Nonnull obj, NSUInteger idx,
                                   BOOL *_Nonnull stop) {
        UIViewController *vc = [NSClassFromString(obj[kChildClassName]) new];
        vc.title = obj[kTitle];
        UINavigationController *nav =
            [UINavigationController.alloc initWithRootViewController:vc];
        UITabBarItem *tabBar = nav.tabBarItem;
        tabBar.title = obj[kTitle];
        tabBar.image = [UIImage imageNamed:obj[kImageName]];
        tabBar.selectedImage = [UIImage imageNamed:obj[kSelectedImageName]];
        [self addChildViewController:nav];
      }];
  self.tabBar.tintColor = FWCColor.coreGreen1;
}

@end
