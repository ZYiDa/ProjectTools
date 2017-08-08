//
//  NavigationControllerTransition.h
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
@interface NavigationControllerTransition : NSObject

+ (void)transitionWithDuration:(CFTimeInterval)duration timingFunctionName:(NSString *)timingFunctionName transitionType:(NSString *)type transitionSubtype:(NSString *)subtype navigationController:(UINavigationController *)navigationController;

@end
