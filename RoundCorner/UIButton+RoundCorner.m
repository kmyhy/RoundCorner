//
//  UIButton+RoundCorner.m
//  SmartLock
//
//  Created by qq on 2019/3/26.
//  Copyright © 2019年 yhy. All rights reserved.
//

#import "UIButton+RoundCorner.h"
#import "UIView+RoundCorner.h"


@implementation UIButton (RoundCorner)

-(void)setCornerRadius:(double)radii fillColor:(UIColor*)color state:(UIControlState)state{
    UIImage* roundImg = [self roundImageWithFillColor:color cornerRadius:radii strokeColor:nil strokeWidth:0];
    [self setBackgroundImage:roundImg
                            forState:state];
    self.backgroundColor = [UIColor clearColor];
}
-(void)roundCorner{
    [self setCornerRadius:6 fillColor:[UIColor orangeColor] state:UIControlStateNormal];
    [self setCornerRadius:6 fillColor:[UIColor lightGrayColor] state:UIControlStateDisabled];
}
@end
