//
//  ViewController.m
//  runtime_SwitchSysMethod
//
//  Created by 李明禄 on 15/10/5.
//  Copyright © 2015年 李明禄. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+extension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.当ios为8.0时图像正常显示为
    self.iconView.image = [UIImage imageNamed:@"icon"];
    
    //2.当需要适配不同版本时,需要进行判断.
    
    
    
    //    double version = [[[UIDevice currentDevice] systemVersion] doubleValue];
    //    NSLog(@"系统当前版本为:%f",version);
    //
    //    if (version > 8.0) {
    //        self.iconView.image = [UIImage imageNamed:@"icon_os9.png"];
    //    } else {
    //        self.iconView.image = [UIImage imageNamed:@"icon.png"];
    //    }
    //    
    
     //一般解决方法为每一个图标进行判断,如果项目中存在很多修改的地方,这样做太麻烦.此时我们需要拦截系统UIImage的方法.
    /**
     *  操作步骤:
     1.添加一个UIImage的一个分类;
     2.导入运行时头文件;
     3.添加运行时交换方法;
     4.在控制器中导入分类; 
     */

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
