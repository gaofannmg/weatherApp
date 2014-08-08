//
//  ShowWeatherInfoViewController.h
//  HelloSunny
//
//  Created by fan on 14-8-8.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "BaseViewController.h"

@interface ShowWeatherInfoViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UILabel *cityNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *lowLbl;
@property (weak, nonatomic) IBOutlet UILabel *highLbl;
@property (weak, nonatomic) IBOutlet UILabel *timeLbl;
@property (weak, nonatomic) IBOutlet UILabel *weatherDespLbl;
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;



@end
