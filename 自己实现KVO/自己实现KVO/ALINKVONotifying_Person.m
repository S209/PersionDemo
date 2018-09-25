//
//  ALINKVONotifying_Person.m
//  自己实现KVO
//
//  Created by tuhaisheng on 2018/9/24.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "ALINKVONotifying_Person.h"
#import <objc/runtime.h>
NSString *const ObserverKey = @"ObserverKey";
@implementation ALINKVONotifying_Person
- (void)setName:(NSString *)name{
    NSString *oldName = self.name;
    [super setName:name];
    // 获取观察者
    id obsetver = objc_getAssociatedObject(self, (__bridge const void * _Nonnull)(ObserverKey));
    NSDictionary<NSKeyValueChangeKey,id> *changeDict = oldName ? @{NSKeyValueChangeNewKey : name, NSKeyValueChangeOldKey : oldName} : @{NSKeyValueChangeNewKey : name};
    [obsetver observeValueForKeyPath:@"name" ofObject:self change:changeDict context:nil];
}
@end
