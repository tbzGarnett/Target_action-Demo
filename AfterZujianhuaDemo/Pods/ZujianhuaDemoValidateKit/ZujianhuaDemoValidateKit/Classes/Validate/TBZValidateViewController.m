//
//  TBZValidateViewController.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "TBZValidateViewController.h"

@interface TBZValidateViewController ()

@end

@implementation TBZValidateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *trueBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    trueBtn.frame = CGRectMake(20, 70, 80, 30);
    [trueBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [trueBtn setTitle:@"信息正确" forState:UIControlStateNormal];
    trueBtn.backgroundColor = [UIColor yellowColor];
    trueBtn.titleLabel.font = [UIFont systemFontOfSize:17.0f];
    [self.view addSubview:trueBtn];
    
    UIButton *falseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [falseBtn setTitle:@"信息错误" forState:UIControlStateNormal];
    [falseBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    falseBtn.frame = CGRectMake(20, 130, 80, 30);
    falseBtn.backgroundColor = [UIColor grayColor];
    falseBtn.titleLabel.font = [UIFont systemFontOfSize:17.0f];
    [self.view addSubview:falseBtn];
    
    [trueBtn addTarget:self action:@selector(trueAction) forControlEvents:UIControlEventTouchUpInside];
    [falseBtn addTarget:self action:@selector(falseAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)trueAction{
    if (self.resultBlock) {
        self.resultBlock(YES);
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)falseAction{
    if (self.resultBlock) {
        self.resultBlock(NO);
        [self.navigationController popViewControllerAnimated:YES];
    }
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
