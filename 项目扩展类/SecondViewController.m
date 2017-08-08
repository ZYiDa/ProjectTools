//
//  SecondViewController.m
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+BackButtonHandler.h"
#import "NavigationControllerTransition.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)navigationShouldPopOnBackButton
{
    [NavigationControllerTransition transitionWithDuration:0.5f
                                        timingFunctionName:kCAMediaTimingFunctionLinear
                                            transitionType:kCATransitionReveal
                                         transitionSubtype:kCATransitionFromLeft
                                      navigationController:self.navigationController];
    [self.navigationController popViewControllerAnimated:NO];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
