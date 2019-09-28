//
//  ViewController.m
//  UIViewController生命周期
//
//  Created by 鳞潜羽翔 on 2019/9/23.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//非storyBoard都走这个方法
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"界面一  %s", __FUNCTION__);
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        ;
    }
    return self;
}

//如果链接了串联图storyBoard走这个方法
- (instancetype)initWithCoder:(NSCoder *)coder {
    NSLog(@"界面一  %s", __FUNCTION__);
    self = [super initWithCoder:coder];
    if (self) {
        {
            ;
        }
    }
    return self;
}


//加载视图，（默认从nib)
- (void)loadView {
    [super loadView];
    NSLog(@"界面一  %s", __FUNCTION__);
//    self.view.frame = CGRectZero;
//    self.view.backgroundColor = [UIColor redColor];
}

//视图控制器中的视图加载完成， viewController自带的view加载完成
- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
    NSLog(@"界面一  %s", __FUNCTION__);
    self.view.backgroundColor = [UIColor redColor];
    UIButton *presentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview: presentButton];
    [presentButton setTitle:@"present" forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(clickpresent) forControlEvents:UIControlEventTouchUpInside];
    presentButton.frame = CGRectMake(100, 100, 80, 40);

    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:pushButton];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(clickpush) forControlEvents:UIControlEventTouchUpInside];
    pushButton.frame = CGRectMake(100, 160, 80, 40);
    
    
}

//视图将要出现
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewWillAppear:animated];
}

//view即将布局其subviews
- (void)viewWillLayoutSubviews {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewWillLayoutSubviews];
}

//view已经布局其subviews
- (void)viewDidLayoutSubviews {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewDidLayoutSubviews];
}

//视图已经出现
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewDidAppear:animated];
}

//视图即将要消失
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewWillDisappear:animated];
    
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super viewDidDisappear:animated];
}

//出现系统警告//模拟内存警告，点击模拟器，hardware，simulate，memory waring
- (void)didReceiveMemoryWarning {
    NSLog(@"界面一  %s", __FUNCTION__);
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"界面一  %s", __FUNCTION__);
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    SecondViewController *secondViewController = [[SecondViewController alloc] init];
////    [self presentViewController:secondViewController animated:YES completion:nil];
//    [self.navigationController pushViewController:secondViewController animated:YES];
//}

-(void)clickpresent {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self presentViewController:secondViewController animated:YES completion:nil];
}

-(void)clickpush {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
