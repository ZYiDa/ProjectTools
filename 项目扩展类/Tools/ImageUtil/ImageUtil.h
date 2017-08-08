//
//  ImageUtil.h
//  FaceDetectDemoForObjectiveC
//
//  Created by YYKit on 2017/5/3.
//  Copyright © 2017年 1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ImageUtil : NSObject
/*
 *压缩图片
 */
+ (UIImage *)resizeImageWithImage:(UIImage *)image targetSize:(CGSize)targetSize;

/*
 *获取脸部图片
 */
+ (CGRect)adjustFaceImageWithRect:(CGRect)rect sourceImage:(UIImage *)sourceImage;

/*
 *在一张图片上根据坐标范围裁剪图片
 */
+ (UIImage *)cutImageWithRect:(CGRect)rect image:(UIImage *)cutImage;

@end
