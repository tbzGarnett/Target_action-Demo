//
//  CTMediator+TBZValidate.h
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ResultBlock)(BOOL isTrue);

@interface CTMediator (TBZValidate)
- (UIViewController *)validateWithResult:(ResultBlock)resultBlock;
@end

NS_ASSUME_NONNULL_END
