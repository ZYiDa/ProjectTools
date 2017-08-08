//
//  NavigationControllerTransition.m
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import "NavigationControllerTransition.h"

@implementation NavigationControllerTransition

+ (void)transitionWithDuration:(CFTimeInterval)duration
            timingFunctionName:(NSString *)timingFunctionName
                transitionType:(NSString *)type
             transitionSubtype:(NSString *)subtype
          navigationController:(UINavigationController *)navigationController
{
    CATransition *transition = [CATransition animation];
    transition.duration = duration;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:timingFunctionName];
    transition.type = type;
    transition.subtype = subtype;
    [navigationController.view.layer addAnimation:transition forKey:nil];
}
@end
