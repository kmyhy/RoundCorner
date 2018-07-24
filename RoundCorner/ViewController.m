//
//  ViewController.m
//  RoundCorner
//
//  Created by qq on 2018/7/23.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import "ViewController.h"
#import "UIView+RoundCorner.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*** 设置 Button 的圆角 ***/
    // 计算圆角半径
    CGFloat radii = _button.bounds.size.height/2.0;
    
    // 设置 normal 状态图片
    UIImage* image1 = [_button roundImageWithFillColor:nil cornerRadius:radii strokeColor:[UIColor grayColor] strokeWidth:1 ];
    [_button setBackgroundImage:image1 forState:UIControlStateNormal];
    
    // 设置选中状态图片
    UIImage* image2 = [_button roundImageWithFillColor:[UIColor redColor] cornerRadius:radii strokeColor:nil strokeWidth:0];
    [_button setBackgroundImage:image2 forState:UIControlStateSelected];
    
    /*** 设置 ImageView 的圆角 ***/
    _imageView.image = [_imageView roundImageWithImage:_imageView.image cornerRadus:30];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClicked:(UIButton*)sender {
    sender.selected = !sender.selected;
}


@end
