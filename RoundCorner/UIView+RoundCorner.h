//
//  UIView+RoundCorner.h
//  RoundCorner
//  用于替代会导致离屏渲染的 cornerRadius 圆角设置。
//  Created by qq on 2018/7/23.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RoundCorner)

-(UIImage*)roundImageWithFillColor:(UIColor*)fillColor      // 填充色，nil 为透明填充
                      cornerRadius:(CGFloat)cornerRadius    // 圆角半径
                       strokeColor:(UIColor*)strokeColor    // 边线颜色，nil 为无边框
                       strokeWidth:(CGFloat)strokeWidth;    // 线宽，0 为无边框

-(UIImage*)roundImageWithImage:(UIImage*)image              // 原图片
                   cornerRadus:(CGFloat)radii;              // 圆角半径

@end
