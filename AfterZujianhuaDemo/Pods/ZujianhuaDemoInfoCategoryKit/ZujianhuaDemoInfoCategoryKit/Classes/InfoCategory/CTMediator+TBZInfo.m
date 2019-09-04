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
    
    return [self performTarget:@"TBZInfo" action:@"TBZGotoInfoViewController" params:mDic shouldCacheTarget:NO];
    //    NSString *url = [NSString stringWithFormat:@"aaa://TBZInfo/TBZGotoInfoViewController?name=%@&age=%@",name,age];
    //    return [self performActionWithUrl:[NSURL URLWithString:url] completion:^(NSDictionary *info) {
    //        NSLog(@"%@",info);
    //    }];
}
@end
