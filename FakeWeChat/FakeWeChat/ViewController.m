//
//  ViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/17.
//

#import "ViewController.h"
#import "FWCLog.h"
#import "FWCUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;

    QMUIButton *btn = [QMUIButton.alloc qmui_initWithImage:nil title:@"日志"];
    btn.backgroundColor = FWCColorThemed(UIColor.redColor, UIColor.whiteColor);
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(testLog) forControlEvents:UIControlEventTouchUpInside];
}

- (void)testLog {
    FWCInfo(@"test:%d %f", 100, 3.14);
}

@end
