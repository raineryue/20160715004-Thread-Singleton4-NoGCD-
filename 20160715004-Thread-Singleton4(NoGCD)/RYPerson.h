//
//  RYPerson.h
//  20160715004-Thread-Singleton4(NoGCD)
//
//  Created by Rainer on 16/7/15.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RYPerson : NSObject

+ (instancetype)sharedInstance;

@end
