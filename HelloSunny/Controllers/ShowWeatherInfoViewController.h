//
//  ShowWeatherInfoViewController.h
//  HelloSunny
//
//  Created by fan on 14-8-8.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "BaseViewController.h"

@interface ShowWeatherInfoViewController : BaseViewController
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *cityNameLbl;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *lowLbl;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *highLbl;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *timeLbl;

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *weatherDespLbl;
@end
