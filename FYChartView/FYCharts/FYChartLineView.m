//
//  FYChartLineView.m
//  FYChartView
//
//  Created by 樊杨 on 2019/11/8.
//  Copyright © 2019 樊杨. All rights reserved.
//

#import "FYChartLineView.h"



#define containerMargin 5.0
#define XAxisLabelHeight 30
#define YAxisLabelWidth 40
#define kWidth self.bounds.size.width
#define kHeight self.bounds.size.height

@interface FYChartLineView ()

@property(nonatomic,strong)UIScrollView * scrollView;

@property(nonatomic,strong)CAShapeLayer * yAxisLeftLayer;

@property(nonatomic,strong)CAShapeLayer * yAxisRightLayer;

@property(nonatomic,strong)CAShapeLayer * xAxisLayer;




@end


@implementation FYChartLineView

-(UIScrollView *)scrollView{
 
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc]init];
    }
    return _scrollView;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self setDefaultValue];
    }
    return self;
    
}

-(void)setDefaultValue{
   
    self.lineMode = FYChartLineModePolyline;
    self.lineWidth = 5.0f;
    self.axisWdith = 0.5f;
    self.YMeshdensity = 5;
    self.isShowRightY = YES;
    self.lineColor = [UIColor blackColor];
    [self drawYLeftAxisView];
    [self drawYRightAxisView];
    [self drawXAxisView];
}

/// 绘制Y轴左侧坐标线
-(void)drawYLeftAxisView{
    
    CGPoint startPoint = CGPointMake(YAxisLabelWidth+containerMargin, 0);
    CGPoint endPoint = CGPointMake(YAxisLabelWidth+containerMargin, kHeight-XAxisLabelHeight);
    //绘制直线
    UIBezierPath * yAxisLinePath = [UIBezierPath bezierPath];
    [yAxisLinePath moveToPoint:startPoint];
    [yAxisLinePath addLineToPoint:endPoint];
    
    CAShapeLayer * yAxisLineLayer = [CAShapeLayer layer];
    yAxisLineLayer.path = yAxisLinePath.CGPath;
    yAxisLineLayer.lineWidth = self.axisWdith;
    yAxisLineLayer.strokeColor = [UIColor lightGrayColor].CGColor;
    _yAxisLeftLayer = yAxisLineLayer;
    [self.layer addSublayer:yAxisLineLayer];
    
}

/// 绘制Y轴右侧坐标线
-(void)drawYRightAxisView{
    
    CGPoint startPoint = CGPointMake(kWidth-containerMargin-YAxisLabelWidth, 0);
    CGPoint endPoint = CGPointMake(kWidth-containerMargin-YAxisLabelWidth, kHeight-XAxisLabelHeight);
    //绘制直线
    UIBezierPath * yAxisRightLinePath = [UIBezierPath bezierPath];
    [yAxisRightLinePath moveToPoint:startPoint];
    [yAxisRightLinePath addLineToPoint:endPoint];
    
    CAShapeLayer * yAxisRightLineLayer = [CAShapeLayer layer];
    yAxisRightLineLayer.path = yAxisRightLinePath.CGPath;
    yAxisRightLineLayer.lineWidth = self.axisWdith;
    yAxisRightLineLayer.strokeColor = [UIColor lightGrayColor].CGColor;
    _yAxisRightLayer = yAxisRightLineLayer;
    [self.layer addSublayer:yAxisRightLineLayer];
    
}

///绘制x轴坐标线
-(void)drawXAxisView{
    
    CGPoint startPoint = CGPointMake(containerMargin + YAxisLabelWidth, kHeight-XAxisLabelHeight);
    CGPoint endPoint = CGPointMake(kWidth-containerMargin-YAxisLabelWidth, kHeight-XAxisLabelHeight);
    
    UIBezierPath * xAxisPatn = [UIBezierPath bezierPath];
    [xAxisPatn moveToPoint:startPoint];
    [xAxisPatn addLineToPoint:endPoint];
    
    CAShapeLayer * xAxisLayer = [CAShapeLayer layer];
    xAxisLayer.path = xAxisPatn.CGPath;
    xAxisLayer.lineWidth = self.axisWdith;
    xAxisLayer.strokeColor = [[UIColor lightGrayColor]CGColor];
    _xAxisLayer = xAxisLayer;
    [self.layer addSublayer:xAxisLayer];
}

/// 虚线绘制



/// 绘制数据折线
-(void)drawLineView{
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
