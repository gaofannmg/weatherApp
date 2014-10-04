//
//  HomeViewController.m
//  HelloSunny
//
//  Created by fan on 14-10-4.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "HomeViewController.h"
#import "GPSManager.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    /*{"weatherinfo":{"city":"合肥","cityid":"101220101","temp1":"26℃","temp2":"15℃","weather":"晴转多云","img1":"d0.gif","img2":"n1.gif","ptime":"08:00"}}*/
    _contentView.contentSize= CGSizeMake(self.view.frame.size.width, self.view.frame.size.height - 19);

    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(getLocationSuccess:) name:NOTIFICATION_GetCityArera object:nil];
    
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(getLocationFail) name:NOTIFICATION_FAILGETPOSITIONCITY object:nil];
    
    [self setGPS];
}

-(void) setGPS{
    GPSManager *manager = [GPSManager shared];
    [manager startGPS];
}

-(void) getLocationSuccess:(NSNotification*) notification
{
    GPSInfo *gpsInfo = [notification object];
    if (STRINGHASVALUE(gpsInfo.cityName)) {
        NSLog(@"%@",gpsInfo.cityName);
        
        
        
        _cityDesp.text=gpsInfo.cityName;
        wde =[[WeatherDataEngine alloc] initWithHostName:@"www.weather.com.cn"];
        [wde getWeatherInfo:^(NSDictionary *dict) {
            dict = [dict safeObjectForKey:@"weatherinfo"];
            WeatherInfoModel *data = [[WeatherInfoModel alloc] initModel:dict];
            _stateDesp.text = data.weather;
            _lowDesp.text = data.temp2;
            _highDesp.text = data.temp1;
            _timeDesp.text = [NSString stringWithFormat:@"国家气象局%@发布",data.ptime];
            
            
            
        } errorHandler:^(NSError *error) {
            
        } cityid:@"101220101"];
        
        
        
        
    }
}

-(void) getLocationFail
{
    [CommonHelper showAlertTitle:@"" Message:@"定位失败啦"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
