//
//  TBZInfoViewController.m
//  BeforeZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "TBZInfoViewController.h"
#import "CTMediator+TBZValidate.h"

@interface TBZInfoViewController (){
    UIButton *validateBtn;
}

@end

@implementation TBZInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *showLab = [[UILabel alloc] init];
    showLab.frame = CGRectMake(20, 80, 335, 30);
    showLab.text = [NSString stringWithFormat:@"我是%@，今年%@岁",self.name,self.age];
    showLab.textColor = [UIColor redColor];
    showLab.textAlignment = NSTextAlignmentCenter;
    showLab.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:showLab];
    
    validateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    validateBtn.frame = CGRectMake(20, 130, 70, 30);
    [validateBtn setTitle:@"信息验证" forState:UIControlStateNormal];
    [validateBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    validateBtn.backgroundColor = [UIColor orangeColor];
    validateBtn.titleLabel.font = [UIFont systemFontOfSize:17.0f];
    [validateBtn addTarget:self action:@selector(validateAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:validateBtn];
}

- (void)validateAction{
    UIViewController *vc = [[CTMediator sharedInstance] validateWithResult:^(BOOL isTrue) {
        if (isTrue) {
            [self->validateBtn setTitle:@"信息正确" forState:UIControlStateNormal];
            [self->validateBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            self->validateBtn.backgroundColor = [UIColor yellowColor];
        }else{
            [self->validateBtn setTitle:@"信息错误" forState:UIControlStateNormal];
            [self->validateBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self->validateBtn.backgroundColor = [UIColor grayColor];
        }
    }];
    [self.navigationController pushViewController:vc animated:YES];
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
