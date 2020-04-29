//
//  BridgePatternViewController.m
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/4/27.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "BridgePatternViewController.h"
#import "DirectionRemote.h"
#import "TemperatureRemote.h"
#import "HaierAirConditioner.h"
#import "GeliAirConditioner.h"

@interface BridgePatternViewController ()

@end

@implementation BridgePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    //海尔空调
    HaierAirConditioner *haierAirConditioner =  [[HaierAirConditioner alloc] init];
    
    //控制风向
    DirectionRemote *directionRemote = [[DirectionRemote alloc] init];
    //让海尔空调往上吹风
    directionRemote.airConditioner = haierAirConditioner;
    [directionRemote up];
    
    //控制温度
    TemperatureRemote *temperatureRemote = [[TemperatureRemote alloc] init];
    //让海尔空调更冷
    temperatureRemote.airConditioner = haierAirConditioner;
    [temperatureRemote colder];
    
    //让格力空调往下吹热风
    GeliAirConditioner *geliAirConditioner =  [[GeliAirConditioner alloc] init];
    
    directionRemote.airConditioner = geliAirConditioner;
    [directionRemote down];
    temperatureRemote.airConditioner = geliAirConditioner;
    [temperatureRemote warmer];
}
@end
