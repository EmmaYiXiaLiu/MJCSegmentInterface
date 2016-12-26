//
//  MJCBottomView.h
//  MJCSlideSwitch
//
//  Created by mjc on 16/10/26.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJCSegmentInterface.h"

@interface MJCBottomView : UIView

@property (nonatomic,strong) UIColor *bottomBackgroundColor;

-(void)setBottomHidden:(BOOL)bottomHidden;

-(void)isBottomFrame:(BOOL)isBottomFrame setBottomFrame:(CGRect)setBottomFrame bottomHegiht:(CGFloat)bottomHegiht titlesView:(UIView *)titlesView;


-(void)isBottomFrame:(BOOL)isBottomFrame setBottomFrame:(CGRect)setBottomFrame bottomHegiht:(CGFloat)bottomHegiht titlesScroll:(UIScrollView *)titlesScroll;


@end
