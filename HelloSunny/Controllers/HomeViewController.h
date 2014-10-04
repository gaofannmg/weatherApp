//
//  HomeViewController.h
//  HelloSunny
//
//  Created by fan on 14-10-4.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "BaseViewController.h"
#import "WeatherDataEngine.h"
#import "weatherInfoModel.h"


@interface HomeViewController : BaseViewController
{
    WeatherDataEngine *wde;
}

@property (weak, nonatomic) IBOutlet UILabel *stateDesp;
@property (weak, nonatomic) IBOutlet UILabel *lowDesp;
@property (weak, nonatomic) IBOutlet UILabel *highDesp;
@property (weak, nonatomic) IBOutlet UILabel *timeDesp;
@property (weak, nonatomic) IBOutlet UILabel *cityDesp;
@property (weak, nonatomic) IBOutlet UIScrollView *contentView;


@end
