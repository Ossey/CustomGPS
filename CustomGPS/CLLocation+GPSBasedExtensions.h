//
//  CLLocation+GPSBasedExtensions.h
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <ImageIO/ImageIO.h>

@interface CLLocation (GPSBasedExtensions)

/// 将CLLocation对象转换为图片上的字典对象
- (NSDictionary *)GPSDictionary;

@end
