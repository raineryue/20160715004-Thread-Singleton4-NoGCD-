//
//  RYPerson.m
//  20160715004-Thread-Singleton4(NoGCD)
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "RYPerson.h"

@interface RYPerson () <NSCopying>

@end

@implementation RYPerson

static id _instance;

+ (instancetype)sharedInstance {
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    // 由于线程安全问题，所以这里需要加锁
    @synchronized (self) {
        if (nil == _instance) {
            _instance = [super allocWithZone:zone];
        }
    }
    
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

@end
