//
//  Target_TBZValidateViewController.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "Target_TBZValidate.h"
#import "TBZValidateViewController.h"

@implementation Target_TBZValidate
- (UIViewController *)Action_TBZValidateAction:(NSDictionary *)param{
    TBZValidateViewController *validateVC = [[TBZValidateViewController alloc] init];
    validateVC.resultBlock = [param valueForKey:@"validateBlock"];
    return validateVC;
}
@end
