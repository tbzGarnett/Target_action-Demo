//
//  CTMediator+TBZValidate.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "CTMediator+TBZValidate.h"

@implementation CTMediator (TBZValidate)
- (UIViewController *)validateWithResult:(ResultBlock)resultBlock{
    NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
    [mDic setValue:resultBlock forKey:@"validateBlock"];
    return [self performTarget:@"TBZValidateViewController" action:@"TBZValidateAction" params:mDic shouldCacheTarget:NO];
}
@end
