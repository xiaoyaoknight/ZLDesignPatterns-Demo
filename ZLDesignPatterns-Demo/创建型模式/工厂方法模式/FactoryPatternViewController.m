//
//  FactoryPatternViewController.m
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/4/27.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "FactoryPatternViewController.h"
#import "FruitsFactory.h"
#import "Fruits.h"
#import "Banana.h"
#import "Lemmon.h"

@interface FactoryPatternViewController ()

@end

@implementation FactoryPatternViewController

/*
工厂方法
1.通过类继承创建抽象产品
2.创建一种产品
3.子类化创建并重写工厂方法来创建新产品
工厂方法: 多个产品抽象
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Fruits *lemmon = [FruitsFactory fruitsFactory:FruitsTypeApple];
    [lemmon money];
    [lemmon fruitsColor];
    [(Lemmon *)lemmon lemmonShape];
    
    Fruits *banana = [FruitsFactory fruitsFactory:FruitsTypeBanana];
    [banana money];
    [banana fruitsColor];
    [(Banana *)banana bananaShape];
     
}

@end
