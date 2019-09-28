//
//  SecondViewController.m
//  UIViewController生命周期
//
//  Created by 鳞潜羽翔 on 2019/9/23.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"界面二  %s", __FUNCTION__);
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        ;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    NSLog(@"界面二  %s", __FUNCTION__);
    self = [super initWithCoder:coder];
    if (self) {
        {
            ;
        }
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"界面二  %s", __FUNCTION__);
    
}

//视图将要出现
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewWillAppear:animated];
}

//view即将布局其subviews
- (void)viewWillLayoutSubviews {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewWillLayoutSubviews];
}

//view已经布局其subviews
- (void)viewDidLayoutSubviews {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewDidLayoutSubviews];
}

//视图已经出现
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewDidAppear:animated];
}

//视图即将要消失
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewWillDisappear:animated];
    
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super viewDidDisappear:animated];
}

//出现系统警告//模拟内存警告，点击模拟器，hardware，simulate，memory waring
- (void)didReceiveMemoryWarning {
    NSLog(@"界面二  %s", __FUNCTION__);
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"界面二  %s", __FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"界面二  %s", __FUNCTION__);
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
//    [self.navigationController popViewControllerAnimated:YES];
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
