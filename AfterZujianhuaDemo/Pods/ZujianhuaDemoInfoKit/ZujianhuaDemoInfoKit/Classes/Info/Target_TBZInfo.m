//
//  Target_TBZInfoViewController.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "Target_TBZInfo.h"
#import "TBZInfoViewController.h"

@implementation Target_TBZInfo

- (UIViewController *)Action_TBZGotoInfoViewController:(NSDictionary *)param{
    TBZInfoViewController *infoVC = [[TBZInfoViewController alloc] init];
    infoVC.name = [param objectForKey:@"name"];
    infoVC.age = [param objectForKey:@"age"];
    return infoVC;
}

@end
