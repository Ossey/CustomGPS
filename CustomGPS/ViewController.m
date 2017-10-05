//
//  ViewController.m
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import "ViewController.h"
#import "LocationConverter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 首先需要在配置gpx文件: 进入Product-Edit Scheme-Edit Scheme菜单, 选择Run-Options,在 Core Location项目中选中Allow Location Simulation复选框,然后在 Default Location选择gpx文件
    
    // 将需要定位坐标转换为wps坐标
    CLLocation *location = [[CLLocation alloc] initWithLatitude:30.266732 longitude:119.956855];
    CLLocationCoordinate2D coord2d = [LocationConverter gcj02ToWgs84:location.coordinate];
    NSLog(@"纬度: %f, 经度:%f", coord2d.latitude, coord2d.longitude);
    
    // 再将转换后的纬度和经度添加到项目中自定义的Location.gpx，放到文件对应的经度和纬度中即可
    // 将此项目运行到iOS设备上即可
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
