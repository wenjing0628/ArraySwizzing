//
//  ViewController.m
//  Swizzing
//
//  Created by zwj on 2018/4/2.
//  Copyright © 2018年 health. All rights reserved.
//

#import "ViewController.h"
#import "ArrayViewController.h"
#import "DictionaryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"数据缺失防闪退";
    self.view.backgroundColor = [UIColor whiteColor];
    NSArray *array = @[@"数组数据防缺失",@"字典数据防缺失"];
    for (NSInteger i = 0; i < 2; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(50, 100 + i * 100, 200, 50);
        [button setTitle:array[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        button.tag = 100 +i;
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        [self.navigationController pushViewController:[[ArrayViewController alloc]init] animated:YES];
    }else{
        [self.navigationController pushViewController:[[DictionaryViewController alloc]init] animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
