//
//  FWCHomeViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCHomeViewController.h"

@interface FWCHomeViewController ()

@end

@implementation FWCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *view = [UIView.alloc initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 100, 100, 100)];
    view.backgroundColor = UIColor.redColor;
    [self.view addSubview:view];
}

@end
