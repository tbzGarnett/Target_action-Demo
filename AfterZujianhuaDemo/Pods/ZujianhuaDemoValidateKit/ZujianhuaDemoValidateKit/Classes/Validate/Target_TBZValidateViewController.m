//
//  Target_TBZValidateViewController.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "Target_TBZValidateViewController.h"
#import "TBZValidateViewController.h"

@implementation Target_TBZValidateViewController
- (UIViewController *)Action_TBZValidateAction:(NSDictionary *)param{
    TBZValidateViewController *validateVC = [[TBZValidateViewController alloc] init];
    validateVC.resultBlock = [param valueForKey:@"validateBlock"];
    return validateVC;
}
@end
