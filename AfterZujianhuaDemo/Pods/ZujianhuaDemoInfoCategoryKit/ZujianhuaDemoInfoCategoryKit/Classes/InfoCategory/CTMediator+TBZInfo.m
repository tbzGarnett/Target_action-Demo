//
//  CTMediator+TBZInfo.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "CTMediator+TBZInfo.h"

@implementation CTMediator (TBZInfo)

- (UIViewController *)infoWithName:(NSString *)name age:(NSString *)age{
    NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
    [mDic setObject:name forKey:@"name"];
    [mDic setObject:age forKey:@"age"];
    
    return [self performTarget:@"TBZInfoViewController" action:@"TBZGotoInfoViewController" params:mDic shouldCacheTarget:NO];
}
@end
