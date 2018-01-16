//
//  ViewController.m
//  IdCardRecognition
//
//  Created by 汤义 on 2018/1/5.
//  Copyright © 2018年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "TYIdentificationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initBut];
}

- (void)initBut {
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(20, 80, 100, 40);
    but.backgroundColor = [UIColor redColor];
    [but setTitle:@"身份证识别" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}

- (void)selectorBut {
    TYIdentificationViewController *vc = [[TYIdentificationViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
