//
//  BaseViewController.m
//  HelloSunny
//  controller 基类
//  Created by garin on 14-4-16.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

//兼容IOS7
- (void) viewDidLayoutSubviews
{
    if (IOS_VERSION >= 7.0)
    {
        CGFloat topBarOffset = self.topLayoutGuide.length;
        NSLog(@"%f",self.view.frame.origin.y);
        self.view.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y - topBarOffset, self.view.bounds.size.width, self.view.bounds.size.height);
        
        NSLog(@"%f",self.view.frame.origin.y);
        //        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        //http://m.weather.com.cn/data/101010100.html
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
