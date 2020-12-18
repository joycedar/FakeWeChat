//
//  ViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/17.
//

#import "ViewController.h"
#import "FWCUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;

    QMUIButton *btn = [QMUIButton.alloc qmui_initWithImage:nil title:@"日志"];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(testLog) forControlEvents:UIControlEventTouchUpInside];
}

- (void)testLog {
    //    [QMUIConsole log:@"test log"];
    QMUIConsole.sharedInstance.canShow = YES;
    [QMUIConsole log:@"test"];
}

@end
