//
//  BusinessObject3.m
//  DesignModeDemo
//
//  Created by wangzelong on 2020/4/29.
//  Copyright © 2020 koala. All rights reserved.
//

#import "BusinessObject3.h"

@implementation BusinessObject3

- (void)handleBusiness:(CompletionBlock)completion
{
    NSLog(@"%s", __func__);
    if (completion) {
        completion(YES);
    }
}
@end
