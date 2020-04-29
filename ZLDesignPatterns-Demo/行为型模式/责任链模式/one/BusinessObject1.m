//
//  BusinessObject1.m
//  DesignModeDemo
//
//  Created by wangzelong on 2020/4/29.
//  Copyright © 2020 koala. All rights reserved.
//

#import "BusinessObject1.h"

@implementation BusinessObject1

- (void)handleBusiness:(CompletionBlock)completion
{
    NSLog(@"%s", __func__);
    if (completion) {
        completion(NO);
//        completion();
    }
}
@end
