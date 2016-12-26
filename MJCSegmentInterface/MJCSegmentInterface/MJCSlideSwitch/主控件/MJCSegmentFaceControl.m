//
//  MJCSegmentsInterface.m
//  MJCSegmentInterface
//
//  Created by mjc on 16/12/16.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCSegmentFaceControl.h"
#import "MJCSegmentInterface.h"

@interface MJCSegmentFaceControl ()

/** <#  注释  #> */
@property (nonatomic,strong) MJCSegmentInterface *segerntInterface;


/** <#  注释  #> */
@property (nonatomic,strong) UIView *navTitlesView;

@property (nonatomic,strong) UIScrollView *navTitlesScollView;


@end



@implementation MJCSegmentFaceControl


////有导航栏或者tabbar时,保证标题栏不会被覆盖,(直接把这句代码复制控制器中就OK了)
//if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
//    self.edgesForExtendedLayout = UIRectEdgeNone;
//}


-(UIView *)intoFaceView:(MJCSegmentInterfaceStyle)interfacestyle
{
    if (!_segerntInterface) {
        
        _segerntInterface = [[MJCSegmentInterface  alloc]init];
        _segerntInterface.frame = MJCScreenbound;
        
        [_segerntInterface setSegmentInterFaceStyle:interfacestyle];
        
        if (interfacestyle == SegMentInterfaceStyleLess || interfacestyle == SegMentInterfaceStyleMoreUse) {
            _segerntInterface.rightViewHidden = NO;
            
        }else if (interfacestyle == SegMentInterfaceStyleNavBar){
            _segerntInterface.rightViewHidden = YES;
            _segerntInterface.bottomViewHidden = YES;
            _segerntInterface.topViewHidden = YES;
            _segerntInterface.indicatorHidden = YES;

        }else{
            _segerntInterface.rightViewHidden = YES;
        }
    }
    
    return _segerntInterface;
}

-(void)intoTitlesArray:(NSArray *)titlesArray
{
    [_segerntInterface intoTitlesArray:titlesArray];
}

-(void)intoChildViewController:(UIViewController *)childViewController;
{
    [_segerntInterface intoChildViewController:childViewController];
}

-(void)setInterFaceControlStyle:(MJCSegmentInterfaceStyle)interFaceControlStyle
{
    _interFaceControlStyle = interFaceControlStyle;
    
    _segerntInterface.SegmentInterFaceStyle = interFaceControlStyle;
    
    if (interFaceControlStyle == SegMentInterfaceStyleLess || interFaceControlStyle == SegMentInterfaceStyleMoreUse  ) {
        _segerntInterface.rightViewHidden = NO;
    }else{
        _segerntInterface.rightViewHidden = YES;
    }
}

-(void)setIndicatorStyle:(MJCSegmentIndicatorStyle)indicatorStyle
{
    _indicatorStyle = indicatorStyle;
    
    _segerntInterface.SegmentIndicatorStyle = indicatorStyle;
    
}

-(void)setImageEffectStyle:(MJCImageEffectStyle)imageEffectStyle
{
    _imageEffectStyle = imageEffectStyle;
    
    _segerntInterface.MJCImageEffectStyle = imageEffectStyle;
}

-(void)setScrollTitlesEnabled:(BOOL)scrollTitlesEnabled
{
    _scrollTitlesEnabled = scrollTitlesEnabled;
    
    _segerntInterface.scrollTitlesEnabled = scrollTitlesEnabled;
}

-(void)setChildScollEnabled:(BOOL)childScollEnabled
{
    _childScollEnabled = childScollEnabled;
    
    _segerntInterface.childViewEnabled = childScollEnabled;
}

-(void)setFaceViewFrame:(CGRect)faceViewFrame
{
    _faceViewFrame = faceViewFrame;
    
    _segerntInterface.frame = faceViewFrame;
}

-(void)setTitlesViewframe:(CGRect)titlesViewframe
{
    _titlesViewframe = titlesViewframe;
    
    [_segerntInterface isTitlesViewframe:YES titlesViewframe:titlesViewframe];
}

-(void)setTitlesViewColor:(UIColor *)titlesViewColor
{
    _titlesViewColor  = titlesViewColor;
    _segerntInterface.titlesViewColor = titlesViewColor;
}

-(void)setTitleScrollframe:(CGRect)titleScrollframe
{
    _titleScrollframe = titleScrollframe;
    
    [_segerntInterface isTitlesScrollframe:YES titlesScrollframe:titleScrollframe];
}

-(void)setTitleScrollColor:(UIColor *)titleScrollColor
{
    _titleScrollColor = titleScrollColor;
    _segerntInterface.titleScrollColor = titleScrollColor;
}

-(void)setChildViewframe:(CGRect)childViewframe
{
    _childViewframe = childViewframe;
    
    [_segerntInterface isChildViewframe:YES childViewframe:childViewframe];
}

-(void)setChildViewScollAnimal:(BOOL)childViewScollAnimal
{
    _childViewScollAnimal = childViewScollAnimal;
    [_segerntInterface setChildViewScollAnimal:childViewScollAnimal];
}



-(void)setIndicatorWidth:(CGFloat)indicatorWidth
{
    _indicatorWidth = indicatorWidth;
    _segerntInterface.indicatorWidth = indicatorWidth;
}

-(void)setIndicatorColor:(UIColor *)indicatorColor
{
    _indicatorColor = indicatorColor;
    _segerntInterface.indicatorColor = indicatorColor;
}

-(void)setIndicatorHidden:(BOOL)indicatorHidden
{
    _indicatorHidden = indicatorHidden;
    _segerntInterface.indicatorHidden = indicatorHidden;
}

-(void)setIndicatorFrame:(CGRect)indicatorFrame
{
    _indicatorFrame = indicatorFrame;
    [_segerntInterface isindicatorFrame:YES indicatorFrame:indicatorFrame];
}



-(void)setTopViewHidden:(BOOL)topViewHidden
{
    _topViewHidden = topViewHidden;
    _segerntInterface.topViewHidden = topViewHidden;
}

-(void)setTopViewColor:(UIColor *)topViewColor
{
    _topViewColor = topViewColor;
    _segerntInterface.topViewColor = topViewColor;
}

-(void)setTopViewHegiht:(CGFloat)topViewHegiht
{
    _topViewHegiht = topViewHegiht;
    _segerntInterface.topViewHegiht = topViewHegiht;
}

-(void)setTopViewFrame:(CGRect)topViewFrame
{
    _topViewFrame = topViewFrame;
    [_segerntInterface isTopViewFrame:YES setTopViewFrame:topViewFrame];
}



-(void)setBottomViewHidden:(BOOL)bottomViewHidden
{
    _bottomViewHidden = bottomViewHidden;
    _segerntInterface.bottomViewHidden = bottomViewHidden;
}

-(void)setBottomViewColor:(UIColor *)bottomViewColor
{
    _bottomViewColor = bottomViewColor;
    _segerntInterface.bottomViewColor = bottomViewColor;
}

-(void)setBottomViewHegiht:(CGFloat)bottomViewHegiht
{
    _bottomViewHegiht = bottomViewHegiht;
    _segerntInterface.bottomViewHegiht = bottomViewHegiht;
}

-(void)setBottomViewFrame:(CGRect)bottomViewFrame
{
    _bottomViewFrame = bottomViewFrame;
    [_segerntInterface isBottomViewFrame:YES setBottomViewFrame:bottomViewFrame];
}




-(void)setTabItemBackColor:(UIColor *)tabItemBackColor
{
    _tabItemBackColor = tabItemBackColor;
    
    _segerntInterface.tabItemBackColor = tabItemBackColor;
}

-(void)setTabItemTitlesfont:(UIFont *)tabItemTitlesfont
{
    _tabItemTitlesfont = tabItemTitlesfont;
    _segerntInterface.tabItemTitlesfont = tabItemTitlesfont;
}

-(void)setTabItemWidth:(CGFloat)tabItemWidth
{
    _tabItemWidth = tabItemWidth;
    _segerntInterface.tabItemWidth = tabItemWidth;
}

-(void)setTabItemFrame:(CGRect)tabItemFrame
{
    _tabItemFrame = tabItemFrame;
    [_segerntInterface isTabItemFrame:YES tabItemFrame:tabItemFrame];
}

-(void)setTabItemTitleNormalColor:(UIColor *)tabItemTitleNormalColor
{
    _tabItemTitleNormalColor = tabItemTitleNormalColor;
    _segerntInterface.tabItemTitleNormalColor = tabItemTitleNormalColor;
}

-(void)setTabItemTitleSelectedColor:(UIColor *)tabItemTitleSelectedColor
{
    _tabItemTitleSelectedColor = tabItemTitleSelectedColor;
    _segerntInterface.tabItemTitleSelectedColor = tabItemTitleSelectedColor;
}

-(void)setTabItemImageNormal:(UIImage *)tabItemImageNormal
{
    _tabItemImageNormal = tabItemImageNormal;
    _segerntInterface.tabItemImageNormal = tabItemImageNormal;
}

-(void)setTabItemImageSelected:(UIImage *)tabItemImageSelected
{
    _tabItemImageSelected = tabItemImageSelected;
    _segerntInterface.tabItemImageSelected = tabItemImageSelected;
}

-(void)setTabItemImageNormalArray:(NSArray *)tabItemImageNormalArray
{
    _tabItemImageNormalArray = tabItemImageNormalArray;
    _segerntInterface.tabItemImageNormalArray = tabItemImageNormalArray;
}

-(void)setTabItemImageSelectedArray:(NSArray *)tabItemImageSelectedArray
{
    _tabItemImageSelectedArray = tabItemImageSelectedArray;
    _segerntInterface.tabItemImageSelectedArray = tabItemImageSelectedArray;
}

-(void)setTabItemBackImageNormal:(UIImage *)tabItemBackImageNormal
{
    _tabItemBackImageNormal = tabItemBackImageNormal;
    
    _segerntInterface.tabItemBackImageNormal = tabItemBackImageNormal;
}

-(void)setTabItemBackImageSelected:(UIImage *)tabItemBackImageSelected
{
    _tabItemBackImageSelected = tabItemBackImageSelected;
    
    _segerntInterface.tabItemBackImageSelected = tabItemBackImageSelected;
}
-(void)setTabItemBackImageNormalArray:(NSArray *)tabItemBackImageNormalArray
{
    _tabItemBackImageNormalArray = tabItemBackImageNormalArray;
    
    if (tabItemBackImageNormalArray == nil) {
        
        _segerntInterface.tabItemBackImageNormal = _tabItemBackImageNormal;
    
    }else{
    
        _segerntInterface.tabItemBackImageNormalArray = tabItemBackImageNormalArray;
    }
    
    
}
-(void)setTabItemBackImageSelectedArray:(NSArray *)tabItemBackImageSelectedArray
{
    _tabItemBackImageSelectedArray = tabItemBackImageSelectedArray;
    _segerntInterface.tabItemBackImageSelectedArray = tabItemBackImageSelectedArray;
}


-(void)setVerticalLineColor:(UIColor *)verticalLineColor
{
    _verticalLineColor = verticalLineColor;
    _segerntInterface.rightColor = verticalLineColor;
}

-(void)setVerticalLineHegiht:(CGFloat)verticalLineHegiht
{
    _verticalLineHegiht = verticalLineHegiht;
    _segerntInterface.rightViewHegiht = verticalLineHegiht;
}
-(void)setVerticalLineHidden:(BOOL)verticalLineHidden
{
    _verticalLineHidden = verticalLineHidden;
    _segerntInterface.rightViewHidden = verticalLineHidden;
}



-(void)setRightMostBtnShow:(BOOL)rightMostBtnShow
{
    _rightMostBtnShow = rightMostBtnShow;
    _segerntInterface.rightMostBtnShow = rightMostBtnShow;
}

-(void)setRightMostBtnColor:(UIColor *)rightMostBtnColor
{
    _rightMostBtnColor = rightMostBtnColor;
    _segerntInterface.rightMostBtnColor = rightMostBtnColor;
}

-(void)setRightMostBtnImage:(UIImage *)rightMostBtnImage
{
    _rightMostBtnImage = rightMostBtnImage;
    _segerntInterface.rightMostBtnImage = rightMostBtnImage;
}

-(void)setRightMostBtnFrame:(CGRect)rightMostBtnFrame
{
    _rightMostBtnFrame = rightMostBtnFrame;
    [_segerntInterface isRigthMostFrame:YES rightMostBtnFrame:rightMostBtnFrame];
}

-(void)setMostLeftPosition:(UIImage *)mostLeftPosition
{
    _mostLeftPosition = mostLeftPosition;
    _segerntInterface.mostLeftPosition = mostLeftPosition;
}

-(void)setMostRightPosition:(UIImage *)mostRightPosition
{
    _mostRightPosition = mostRightPosition;
    _segerntInterface.mostRightPosition = mostRightPosition;
}

-(void)setIsOpenJump:(BOOL)isOpenJump
{
    _isOpenJump = isOpenJump;
    _segerntInterface.isOpenJump = isOpenJump;
}

-(void)setSlideDelegate:(id<MJCSlideSwitchViewDelegate>)slideDelegate
{
    _slideDelegate =slideDelegate;
    _segerntInterface.slideDelegate = slideDelegate;
}


-(UIView *)intoTitlesFace:(NSArray *)titlesArr;
{
    [_segerntInterface isChildViewframe:YES childViewframe:_childViewframe];
    [_segerntInterface isTitlesViewframe:YES titlesViewframe:_titlesViewframe];
    
     return [_segerntInterface intoFaceView:titlesArr];
}

-(UIScrollView *)intoScollFace:(NSArray *)titlesArr;
{
    _segerntInterface.scrollTitlesEnabled = YES;
    
    return [_segerntInterface intoFaceScoll:titlesArr];
}


#pragma mark -- 工具方法
-(void)setRightBtnTopMargin:(CGFloat)rightBtnTopMargin
{
    _rightBtnTopMargin= rightBtnTopMargin;
    _segerntInterface.rightBtnTopMargin = rightBtnTopMargin;
}

-(void)setRightBtnRightMargin:(CGFloat)rightBtnRightMargin
{
    _rightBtnRightMargin = rightBtnRightMargin;
    _segerntInterface.rightBtnRightMargin = rightBtnRightMargin;
}

-(void)setRightBtnBottomMargin:(CGFloat)rightBtnBottomMargin
{
    _rightBtnBottomMargin = rightBtnBottomMargin;
    _segerntInterface.rightBtnBottomMargin = rightBtnBottomMargin;
}

// 图片转换颜色
+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect1 = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect1.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect1);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/*!
 *  通过16进制计算颜色
 *  16机制
 *  颜色对象
 */
+ (UIColor *)colorFromHexRGB:(NSString *)inColorString
{
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:1.0];
    return result;
}

+(void)useNavOrTabbarNotBeCover:(UIViewController *)controllers;
{
    if ([controllers respondsToSelector:@selector(edgesForExtendedLayout)]) {
        controllers.edgesForExtendedLayout = UIRectEdgeNone;
    }

}


@end
