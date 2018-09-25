//
//  NSObject+KVO.m
//  自己实现KVO
//
//  Created by tuhaisheng on 2018/9/24.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
//#import "Person+ALINKVONotifying.h"
#import "ALINKVONotifying_Person.h"
NSString *const ObserverKey = @"ObserverKey";

@implementation NSObject (KVO)

- (void)czc_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
    // 把观察者保存到当前对象
    objc_setAssociatedObject(self, (__bridge const void *)(ObserverKey), observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    // 修改对象isa指针
    object_setClass(self, [ALINKVONotifying_Person class]);
}

@end
