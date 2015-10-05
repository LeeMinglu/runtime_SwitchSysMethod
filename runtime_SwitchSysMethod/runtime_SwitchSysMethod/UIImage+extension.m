//
//  UIImage+extension.m
//  Runtime_SwitchSystemMethod
//
//  Created by 李明禄 on 15/10/5.
//  Copyright © 2015年 李明禄. All rights reserved.
//

#import "UIImage+extension.h"
#import <objc/runtime.h>

@implementation UIImage (extension)

+ (void)load {
    
    Method m1 = class_getClassMethod([UIImage class], @selector(imageNamed:));
    
     Method m2 = class_getClassMethod([UIImage class], @selector(MLimageNamed:));
  
    method_exchangeImplementations(m1, m2);
    
}

+ (UIImage *)MLimageNamed:(NSString *)name {
    double version = [[[UIDevice currentDevice] systemVersion] doubleValue];
    NSLog(@"%f",version);
    
    //当系统版本大于8.0时使用下面的图像
        if (version > 8.0) {
            name = [name stringByAppendingString:@"_os9"];
           
        }
    
    //这里是返回的系统方法,之所以用MLimageNamed:name,是因为当前MLimageNamed:name指向的是系统的imageNamed:name.
    return [UIImage MLimageNamed:name];
    
}

@end
