//
//  BusinessObject2.m
//  DesignModeDemo
//
//  Created by wangzelong on 2020/4/29.
//  Copyright © 2020 koala. All rights reserved.
//

#import "BusinessObject2.h"

@implementation BusinessObject2

- (void)handleBusiness:(CompletionBlock)completion
{
    NSLog(@"%s", __func__);
    if (completion) {
        completion(NO);
//        completion();
    }
}
@end
