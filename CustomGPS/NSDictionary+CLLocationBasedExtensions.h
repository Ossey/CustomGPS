//
//  NSDictionary+CLLocationBasedExtensions.h
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <ImageIO/ImageIO.h>

@interface NSDictionary (CLLocationBasedExtensions)

/// 将图片上的位置信息转化为CLLocation对象
- (CLLocation *)locationFromGPSDictionary;

@end
