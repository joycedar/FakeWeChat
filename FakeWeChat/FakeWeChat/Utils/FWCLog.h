//
//  FWCLog.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import <QMUIKit/QMUIConsole.h>

#define FWCInfo(...) FWCLog(@"Info", __VA_ARGS__)
#define FWCWarn(...) FWCLog(@"Warn", __VA_ARGS__)
#define FWCError(...) FWCLog(@"Error", __VA_ARGS__)

#define FWCLog(level, ...)                                                                                             \
    NSLog(@"[%@] %@", level, [NSString stringWithFormat:__VA_ARGS__]);                                                 \
    [QMUIConsole logWithLevel:level name:@"Default" logString:[NSString stringWithFormat:__VA_ARGS__]];
