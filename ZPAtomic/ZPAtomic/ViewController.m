//
//  ViewController.m
//  ZPAtomic
//
//  Created by 赵鹏 on 2019/8/5.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ViewController.h"
#import "ZPPerson.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZPPerson *person = [[ZPPerson alloc] init];
    person.data = [NSMutableArray array];
    
    /**
     当使用点语法的时候，实际上调用的是person属性的getter方法，又因为person属性是用atomic关键字来修饰的，所以这个过程是线程安全的。但是在调用完点语法之后又调用了addObject方法，这个过程有可能是线程不安全的，因为下面的三行代码有可能是在三个不同的线程中完成的。如果要保证线程安全的话要在下面代码的前后加上”加锁“和”解锁“的操作。
     */
    //加锁
    [person.data addObject:[NSNumber numberWithInteger:1]];
    [person.data addObject:[NSNumber numberWithInteger:2]];
    [person.data addObject:[NSNumber numberWithInteger:3]];
    //解锁
}


@end
