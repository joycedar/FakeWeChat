//
//  FWCMeViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCMeViewController.h"
#import "FWCBaseTableViewCell.h"
#import "FWCUI.h"
#import <YYKit/YYKit.h>

@interface FWCMeViewController ()

@end

@implementation FWCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FWCBaseTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:FWCBaseTableViewCell.className];
    if (!cell) {
        cell = [FWCBaseTableViewCell.alloc initWithStyle:UITableViewCellStyleDefault
                                         reuseIdentifier:FWCBaseTableViewCell.className];
        cell.title = @"测试cell";
        [cell setTitleToDefaultPosition];
        [cell setArrowViewToDefaultPosition];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return FWCBaseTableViewCell.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
