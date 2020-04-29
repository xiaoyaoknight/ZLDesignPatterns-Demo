//
//  SingletonPatternViewController.m
//  ZLDesignPatterns-Demo
//
//  Created by wangzelong on 2020/4/27.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "SingletonPatternViewController.h"
#import "Tool.h"

@interface SingletonPatternViewController ()

@end

@implementation SingletonPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Tool *tool = [Tool shareTool];
    Tool *tool1 = [[Tool alloc] init];
    Tool *tool2 = [Tool new];
    NSLog(@"%@ %@ %@ ", tool, tool1, tool2);
    
    /*
     2020-04-29 18:06:52.219316+0800 ZLDesignPatterns-Demo[12145:624997]
     <Tool: 0x6000022f23f0>
     <Tool: 0x6000022f23f0>
     <Tool: 0x6000022f23f0>
     输出的都一样~
     */
}



@end
