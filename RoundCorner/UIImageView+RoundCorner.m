//
//  UIImageView+RoundCorner.m
//  SmartLock
//
//  Created by qq on 2019/3/27.
//  Copyright © 2019年 yhy. All rights reserved.
//

#import "UIImageView+RoundCorner.h"
#import "UIView+RoundCorner.h"

@implementation UIImageView (RoundCorner)
-(void)setCornerRadius:(double)radii{
    UIImage* roundImg = [self roundImageWithImage:self.image cornerRadus:radii];
    
    self.image = roundImg;
    
}
-(void)roundCorner{
    CGFloat w = self.bounds.size.width/2.0;
    [self setCornerRadius:w];
}
@end
