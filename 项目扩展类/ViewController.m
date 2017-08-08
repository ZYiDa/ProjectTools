//
//  ViewController.m
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import "ViewController.h"
#import "NavigationControllerTransition.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)selectedToPush:(id)sender
{
    SecondViewController *second = [SecondViewController new];
    [NavigationControllerTransition transitionWithDuration:0.5f
                                        timingFunctionName:kCAMediaTimingFunctionLinear
                                            transitionType:kCATransitionReveal
                                         transitionSubtype:kCATransitionFromRight
                                      navigationController:self.navigationController];
    [self.navigationController pushViewController:second animated:NO];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
