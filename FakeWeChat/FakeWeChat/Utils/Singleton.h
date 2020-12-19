//
//  Singleton.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/19.
//

#ifndef Singleton_h
#define Singleton_h

#define SINGLETON_DEF                                                                                                  \
    -(instancetype)init NS_UNAVAILABLE;                                                                                \
    +(instancetype) new NS_UNAVAILABLE;                                                                                \
    +(instancetype)sharedInstance;

#define SINGLETON_IMP                                                                                                  \
    +(instancetype)sharedInstance {                                                                                    \
        static dispatch_once_t once;                                                                                   \
        static id __singleton__;                                                                                       \
        dispatch_once(&once, ^{                                                                                        \
            __singleton__ = [[[self class] alloc] init];                                                               \
        });                                                                                                            \
        return __singleton__;                                                                                          \
    }

#endif /* Singleton_h */
