//
//  DictionaryViewController.m
//  Swizzing
//
//  Created by zwj on 2018/4/2.
//  Copyright © 2018年 health. All rights reserved.
//

#import "DictionaryViewController.h"
#import "NSDictionary+NilSafe.h"
@interface DictionaryViewController ()

@end

@implementation DictionaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"字典数据为缺失";
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *str = nil;
    NSDictionary *dic = @{@"222":str};
    NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:str,@"3333", nil];

    NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
    [mutDic setValue:nil forKey:@"222"];
    NSString *str1 = [mutDic objectForKey:@"1023"];
    NSString *str2 = mutDic[@"1201"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
