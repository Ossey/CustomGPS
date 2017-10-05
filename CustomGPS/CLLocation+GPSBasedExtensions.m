//
//  CLLocation+GPSBasedExtensions.m
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import "CLLocation+GPSBasedExtensions.h"

@implementation CLLocation (GPSBasedExtensions)

- (NSDictionary *)GPSDictionary {
    
    
    
    NSTimeZone    *timeZone   = [NSTimeZone timeZoneWithName:@"UTC"];
    NSDateFormatter *formatter  = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:timeZone];
    [formatter setDateFormat:@"HH:mm:ss.SS"];
    CLLocation *location=self;
    NSDictionary *gpsDict   = [NSDictionary dictionaryWithObjectsAndKeys:
                               [NSNumber numberWithFloat:fabs(location.coordinate.latitude)], kCGImagePropertyGPSLatitude,
                               ((location.coordinate.latitude >= 0) ? @"N" : @"S"), kCGImagePropertyGPSLatitudeRef,
                               [NSNumber numberWithFloat:fabs(location.coordinate.longitude)], kCGImagePropertyGPSLongitude,
                               ((location.coordinate.longitude >= 0) ? @"E" : @"W"), kCGImagePropertyGPSLongitudeRef,
                               [formatter stringFromDate:[location timestamp]], kCGImagePropertyGPSTimeStamp,
                               nil];
    return gpsDict;
}



@end
