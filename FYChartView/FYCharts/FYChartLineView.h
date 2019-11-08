//
//  FYChartLineView.h
//  FYChartView
//
//  Created by 樊杨 on 2019/11/8.
//  Copyright © 2019 樊杨. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    
    FYChartLineModePolyline,//折线
    FYChartLineModeCurve,//曲线
    
} FYChartLineMode;

NS_ASSUME_NONNULL_BEGIN

@interface FYChartLineView : UIView

/// 线条样式(默认:折线)
@property(nonatomic,assign)FYChartLineMode lineMode;

/// 线条颜色
@property(nonatomic,strong)UIColor * lineColor;

/// 线条宽度
@property(nonatomic,assign)CGFloat lineWidth;

/// 坐标线条宽度(默认0.5)
@property(nonatomic,assign)CGFloat axisWdith;

///y轴网格密度
@property(nonatomic,assign)NSInteger YMeshdensity;

/// 是否显示右侧坐标线(默认也是)
@property(nonatomic,assign)BOOL isShowRightY;



@end

NS_ASSUME_NONNULL_END
