//
//  FruitsFactory.m
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/5/13.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "FruitsFactory.h"
#import "Banana.h"
#import "Lemmon.h"

@implementation FruitsFactory

+ (Fruits *)fruitsFactory:(FruitsType)fruitsType {
    Fruits *fruits = nil;
    switch (fruitsType) {
        case FruitsTypeBanana:
            fruits = [[Banana alloc] init];
            break;
        case FruitsTypeApple:
            fruits = [[Lemmon alloc] init];
            break;
        default:
            break;
    }
    return fruits;
}
@end
