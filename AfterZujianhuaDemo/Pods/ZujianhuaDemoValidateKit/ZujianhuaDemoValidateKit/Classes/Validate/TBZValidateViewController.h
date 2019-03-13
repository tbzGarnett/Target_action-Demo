//
//  TBZValidateViewController.h
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ResultBlock)(BOOL isTrue);

@interface TBZValidateViewController : UIViewController

@property (nonatomic, copy) ResultBlock resultBlock;

@end

NS_ASSUME_NONNULL_END
