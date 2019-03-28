//
//  UIButton+RoundCorner.h
//  SmartLock
//
//  Created by qq on 2019/3/26.
//  Copyright © 2019年 yhy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (RoundCorner)
-(void)setCornerRadius:(double)radii fillColor:(UIColor*)color state:(UIControlState)state;
-(void)roundCorner;
@end

NS_ASSUME_NONNULL_END
