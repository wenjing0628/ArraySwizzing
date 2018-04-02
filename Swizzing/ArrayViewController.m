//
//  ArrayViewController.m
//  Swizzing
//
//  Created by zwj on 2018/4/2.
//  Copyright © 2018年 health. All rights reserved.
//

#import "ArrayViewController.h"
#import "NSMutableArray+Swizzling.h"

@interface ArrayViewController ()

@end

@implementation ArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"数组数据缺失";
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *array = [@[@"value", @"value1"]     mutableCopy];
    [array lastObject];
    
    [array removeObject:@"value"];
    [array removeObject:nil];
    [array addObject:@"12"];
    [array addObject:nil];
    [array insertObject:nil atIndex:0];
    [array insertObject:@"sdf" atIndex:10];
    [array objectAtIndex:100];
    [array removeObjectAtIndex:10];
    
    NSMutableArray *anotherArray = [[NSMutableArray alloc] init];
    [anotherArray objectAtIndex:0];
    
    NSString *nilStr = nil;
    NSArray *array1 = @[@"ara", @"sdf", @"dsfdsf", nilStr];
    NSLog(@"array1.count = %lu", array1.count);
    
    // 测试数组中有数组
    NSArray *array2 = @[@[@"12323", @"nsdf", nilStr],     @[@"sdf", @"nilsdf", nilStr, @"sdhfodf"]];
    // Do any additional setup after loading the view.
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
