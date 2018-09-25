//
//  Person.m
//  自己实现KVO
//
//  Created by tuhaisheng on 2018/9/24.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name
{
    [self willChangeValueForKey:@"name"];
    [super setValue:name forKey:@"name"];
    [self didChangeValueForKey:@"name"];
}
@end
