//
//  BusinessObject.h
//  DesignPatten
//
//  Created by yangyang38 on 2018/3/17.
//  Copyright © 2018年 yangyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BusinessObject;

/// block 是否有返回?
/// 本人2中思考，（案例1：订单金额问题，金额太大，组长找经理，经理找董事长，层层查找，可以返回）由子类直接终止，减少查询next时间
/// 案例2，去掉返回值，直接由next作决定。终止的话，不设定next即可。
typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(BusinessObject *handler, BOOL handled);

@interface BusinessObject : NSObject

// 下一个响应者(响应链构成的关键)
@property (nonatomic, strong) BusinessObject *nextBusiness;

// 响应者的处理方法
- (void)handle:(ResultBlock)result;

// 各个业务在该方法当中做实际业务处理
- (void)handleBusiness:(CompletionBlock)completion;
@end
