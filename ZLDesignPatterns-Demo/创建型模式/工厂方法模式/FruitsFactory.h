//
//  FruitsFactory.h
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/5/13.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruits.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, FruitsType) {
    FruitsTypeNone = 0,
    FruitsTypeBanana,
    FruitsTypeApple
};
@interface FruitsFactory : NSObject

+ (Fruits *)fruitsFactory:(FruitsType)fruitsType;
@end

NS_ASSUME_NONNULL_END
