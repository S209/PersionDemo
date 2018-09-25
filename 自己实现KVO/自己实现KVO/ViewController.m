//
//  ViewController.m
//  自己实现KVO
//
//  Created by tuhaisheng on 2018/9/24.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@property (nonatomic, copy) NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.name = @"涂海生";

    Person *per = [[Person alloc] init];
    [per addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    per.name = @"小明";
    [per removeObserver:self forKeyPath:@"name"];
}


- (void)setName:(NSString *)name
{
    [self willChangeValueForKey:@"name"];//KVO在调用存取方法之前总调用
    _name = name;//调用父类的存取方法
    [self didChangeValueForKey:@"name"];//kvo在调用存取方法之后总调用
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
