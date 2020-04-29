//
//  ChainOfResponsibilityPatternViewController.m
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/4/27.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ChainOfResponsibilityPatternViewController.h"

#import "Handler.h"
#import "Order.h"
#import "GroupLeaderHandler.h"
#import "ManagerHandler.h"
#import "ChairmanHandler.h"

#import "BusinessObject.h"
#import "BusinessObject1.h"
#import "BusinessObject2.h"
#import "BusinessObject3.h"


@interface ChainOfResponsibilityPatternViewController ()

@end

@implementation ChainOfResponsibilityPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self test1];
    NSLog(@"--------------------------------------------------");
    [self test2];

}

- (void)test1 {
    
    BusinessObject1 *obj1 = [[BusinessObject1 alloc] init];
    BusinessObject2 *obj2 = [[BusinessObject2 alloc] init];
    BusinessObject3 *obj3 = [[BusinessObject3 alloc] init];
    
    // 添加前后依赖关系，后续进行更改
    obj1.nextBusiness = obj2;
    obj2.nextBusiness = obj3;
    
    [obj1 handle:^(BusinessObject *handler, BOOL handled) {
        
    }];
}

- (void)test2 {
    Handler *handler1 = [[GroupLeaderHandler alloc] init];
    Handler *handler2 = [[ManagerHandler alloc] init];
    Handler *handler3 = [[ChairmanHandler alloc] init];
    
    handler1.successor = handler2;
    handler2.successor = handler3;
    
    Order *order = [[Order alloc] init];
    order.orderMoney = 90000;
    [handler1 handlerOrder:order];
}

@end
