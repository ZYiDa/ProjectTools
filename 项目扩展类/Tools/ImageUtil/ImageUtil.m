//
//  ImageUtil.m
//  FaceDetectDemoForObjectiveC
//
//  Created by YYKit on 2017/5/3.
//  Copyright © 2017年 1. All rights reserved.
//

#import "ImageUtil.h"

@implementation ImageUtil

+ (UIImage *)resizeImageWithImage:(UIImage *)image targetSize:(CGSize)targetSize
{
    CGSize size = image.size;
    CGFloat widthRatio = targetSize.width / image.size.width;
    CGFloat heightRatio = targetSize.height / image.size.height;
    CGSize newSize;
    if (widthRatio > heightRatio) newSize = CGSizeMake(size.width * heightRatio, size.height * heightRatio);
    else newSize = CGSizeMake(size.width * widthRatio, size.height * widthRatio);
    CGRect rect = CGRectMake(0, 0, newSize.width, newSize.height);
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 1.0);
    [image drawInRect:rect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (CGRect)adjustFaceImageWithRect:(CGRect)rect sourceImage:(UIImage *)sourceImage
{
    CGRect faceRect;
    CGFloat widthMargin = rect.size.width/2;;
    CGFloat heightMargin = rect.size.height/2;
    faceRect.origin.x = MAX(rect.origin.x - widthMargin, 0);
    faceRect.origin.y = MAX(rect.origin.y - heightMargin - heightMargin/2, 0) + 20;
    faceRect.size.width = MIN(rect.size.width + 2*widthMargin, (CGFloat)(sourceImage.size.width - faceRect.origin.x - 1));
    faceRect.size.height = MIN(rect.size.height + 2*heightMargin + heightMargin/2, (CGFloat)(sourceImage.size.height - faceRect.origin.y - 1));
    return faceRect;
}
+ (UIImage *)cutImageWithRect:(CGRect)rect image:(UIImage *)cutImage
{
    CGImageRef cgRef = cutImage.CGImage;
    CGImageRef imageRef = CGImageCreateWithImageInRect(cgRef, rect);
    UIImage *thumbScale = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return thumbScale;
}

@end
