//
//  ViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/17.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = UIColor.whiteColor;

  UILabel *label = [UILabel.alloc initWithFrame:CGRectMake(0, 0, 100, 100)];
  label.text = self.navigationItem.title;
  [self.view addSubview:label];
}

@end
