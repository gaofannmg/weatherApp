//
//  ShowWeatherInfoViewController.m
//  HelloSunny
//
//  Created by fan on 14-8-8.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "ShowWeatherInfoViewController.h"

@interface ShowWeatherInfoViewController ()

@end

@implementation ShowWeatherInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden=YES;
    
    //iphone4
    if (!SCREEN_4_INCH)
    {
        _timeLbl.frame = CGRectMake(_timeLbl.frame.origin.x, _timeLbl.frame.origin.y - 80, _timeLbl.frame.size.width, _timeLbl.frame.size.height);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
