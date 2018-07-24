//
//  UIView+RoundCorner.m
//  RoundCorner
//
//  Created by qq on 2018/7/23.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import "UIView+RoundCorner.h"

@implementation UIView (RoundCorner)

-(UIImage*)roundImageWithFillColor:(UIColor*)fillColor      // 填充色，nil 为透明填充
                      cornerRadius:(CGFloat)radii           // 圆角半径
                       strokeColor:(UIColor*)strokeColor    // 边线颜色，nil 为无边框
                       strokeWidth:(CGFloat)strokeWidth{    // 线宽，0 为无边框
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    CGRect rect = self.bounds;
    // 线宽不为 0 ，将线宽从绘制矩形中扣除
    if(strokeWidth > 0){
        rect = CGRectInset(self.bounds, strokeWidth, strokeWidth);
    }
    // 描边色不为 nil，设置描边色
    if(strokeColor){
        [strokeColor setStroke];
    }
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: rect cornerRadius: radii];
    if(fillColor){
        [fillColor setFill];
    }else{
        [[UIColor clearColor] setFill];
    }
    [fillColor setFill];
    [rectanglePath fill];
    // 线宽不为 0，绘制边框
    if(strokeWidth > 0){
        rectanglePath.lineWidth = strokeWidth;
        [rectanglePath stroke];
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
-(UIImage*)roundImageWithImage:(UIImage*)image cornerRadus:(CGFloat)radii{
    CGRect rect= self.bounds;
    
    UIGraphicsBeginImageContextWithOptions(rect.size, false, 0);
    
    CGContextRef context =  UIGraphicsGetCurrentContext();
    
    if(context){
        UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radii];
        CGContextAddPath(context, path.CGPath);
        
        CGContextClip(context);
        
        [image drawInRect:rect];
        
        image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        
    }
    return image;
}
@end
