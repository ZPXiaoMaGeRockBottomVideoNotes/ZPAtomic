//
//  ZPPerson.h
//  ZPAtomic
//
//  Created by 赵鹏 on 2019/8/5.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZPPerson : NSObject

@property (nonatomic, assign) int age;

/**
 "atomic"关键字用于保证属性的setter、getter方法的原子性操作，相当于在属性的getter和setter方法的内部加了线程同步的锁和解锁的相关代码；
 它并不能保证使用属性的过程是线程安全的，.m文件中会举例说明；
 "atomic"关键字虽然是用于保证线程安全的，但是在iOS项目中一般会比较少用到，因为在项目中会频繁地用到属性的setter和getter方法，"atomic"关键字会比较耗费性能，所以一般不用这个关键字来修饰属性。
 */
@property (atomic, copy) NSString *name;
@property (atomic, strong) NSMutableArray *data;

@end

NS_ASSUME_NONNULL_END
