//
//  ViewController.m
//  AfterZujianhuaDemo
//
//  Created by apple on 2019/3/13.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+TBZInfo.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) UITextField *nameTF;
@property (nonatomic, strong) UITextField *ageTF;
@property (nonatomic, strong) UIButton *gotoBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.nameTF];
    [self.view addSubview:self.ageTF];
    [self.view addSubview:self.gotoBtn];
}


- (UITextField *)nameTF{
    if (!_nameTF) {
        _nameTF = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 100, 20)];
        _nameTF.textColor = [UIColor blackColor];
        _nameTF.placeholder = @"请输入姓名";
        _nameTF.font = [UIFont systemFontOfSize:17.0f];
        _nameTF.delegate = self;
    }
    return _nameTF;
}

- (UITextField *)ageTF{
    if (!_ageTF) {
        _ageTF = [[UITextField alloc] initWithFrame:CGRectMake(20, 130, 100, 20)];
        _ageTF.textColor = [UIColor blackColor];
        _ageTF.placeholder = @"请输入年龄";
        _ageTF.font = [UIFont systemFontOfSize:17.0f];
        _ageTF.delegate = self;
    }
    return _ageTF;
}

- (UIButton *)gotoBtn{
    if (!_gotoBtn) {
        _gotoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _gotoBtn.frame = CGRectMake(20, 160, 50, 20);
        _gotoBtn.backgroundColor = [UIColor redColor];
        [_gotoBtn setTitle:@"下一步" forState:UIControlStateNormal];
        _gotoBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
        [_gotoBtn addTarget:self action:@selector(gotoAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gotoBtn;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return YES;
}

- (void)gotoAction{
    UIViewController *vc = [[CTMediator sharedInstance] infoWithName:self.nameTF.text age:self.ageTF.text];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
