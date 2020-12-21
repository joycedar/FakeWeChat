//
//  FWCColorMacro.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#ifndef FWCColorMacro_h
#define FWCColorMacro_h

#import "FWCThemeProvider.h"

#define FWCColorThemed(_default, _dark) [FWCThemeProvider colorWithDefaultColor:_default darkColor:_dark]

#define FWCHexColor(_hex) [UIColor qmui_colorWithHexString:_hex]

#endif /* FWCColorMacro_h */
