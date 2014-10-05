//
//  CityListViewController.m
//  HelloSunny
//
//  Created by fan on 14-10-5.
//  Copyright (c) 2014年 garin. All rights reserved.
//

#import "CityListViewController.h"

@interface CityListViewController ()

@end

@implementation CityListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}


- (IBAction)btnBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 30)];
    sectionView.backgroundColor = [UIColor clearColor];
    
    UILabel *zimuLable = [[UILabel alloc] initWithFrame:sectionView.bounds];
    zimuLable.text = @"A";
    [sectionView addSubview:zimuLable];
    
    return sectionView;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    NSArray *arr =[NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",nil];
    return arr;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identfier = @"citylistcell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identfier];
    if (!cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identfier];
    }
    
    cell.textLabel.text = @"hahha";
    
    return cell;
}


#pragma mark -- UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
