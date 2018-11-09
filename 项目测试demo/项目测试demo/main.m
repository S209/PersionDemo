//
//  main.m
//  项目测试demo
//
//  Created by tuhaisheng on 2018/10/16.
//  Copyright © 2018年 tuhaisheng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        [arrayOne enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //            if (idx == 0) {
        //                obj = @"10";
        //            }
        //        }];
        //
        //        [arrayOne enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //            if (idx == 1) {
        //                obj = @"11";
        //            }
        //        }];
        //
        //        [arrayOne enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //            NSLog(@"===%@====",obj);
        //        }];
        
//                NSMutableArray *arrayOne = [@[@"1",@"2",@"3",@"4",@"5"] mutableCopy];
//                NSArray *arrayTwo = [arrayOne copy];//深拷贝
//                [arrayOne addObject:@"6"];
//
//                NSLog(@"==arrayOne=%@====",arrayOne);
//                NSLog(@"=====arrayTwo===%@====",arrayTwo);
        
        
//
//        NSMutableArray *element = [NSMutableArray arrayWithObject:@(1)];//可变数组
//
////        NSMutableArray *array = [NSMutableArray arrayWithObject:element];//可变数组 里面元素是数组
//
//        NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"1", nil];
//        NSMutableArray *mutableCopyArray = [array mutableCopy];//单层深拷贝
//        [mutableCopyArray addObject:@"2"];
//        [mutableCopyArray[0] addObject:@2];
//        [mutableCopyArray addObject:@"2"];

        
        
//        NSLog(@"element=%p===array==%p====mutableCopyArray=%p=",element,array,mutableCopyArray);
        
//        NSLog(@"element=%@===array==%@====mutableCopyArray=%@=",element,array,mutableCopyArray);
        
        
        NSString *element_01 = @"abc";
        NSString *element_02 = @"def";
        NSString *element_03 = @"ghi";
        NSArray *array = @[element_01, element_02, element_03];
        NSArray *arrayCopy = [array copy];
        NSMutableArray *arrayMCopy = [array mutableCopy];
        
        NSLog(@"array: %p, %p; array.firstObject: %p", array, &array, array.firstObject);
        NSLog(@"arrayCopy: %p, %p; arrayCopy.firstObject: %p", arrayCopy, &arrayCopy, arrayCopy.firstObject);
        NSLog(@"arrayMCopy: %p, %p; arrayMCopy.firstObject: %p", arrayMCopy, &arrayMCopy, arrayMCopy.firstObject);
      
     
        
    }
    return 0;
}
