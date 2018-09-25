//
//  NSObject+KVO.h
//  自己实现KVO
//
//  Created by tuhaisheng on 2018/9/24.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)
- (void)czc_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;
@end
