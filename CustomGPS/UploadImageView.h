//
//  UploadImageView.h
//  CustomGPS
//
//  Created by Swae on 2017/10/6.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BlockImage)(UIImage *newImage);

@interface UploadImageView : UIView

@property (nonatomic,copy) BlockImage clickBlockImage;

/**
*
*  @param blockImage 选择完的图片 如若没选择到或者取消 block不会回调
*/
+(void)showUpUploadImageViewWithBlockImage:(BlockImage)blockImage longitude:(CGFloat)longitude latitude:(CGFloat)latitude;

@end
