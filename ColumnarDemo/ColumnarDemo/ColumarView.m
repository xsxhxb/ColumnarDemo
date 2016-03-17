//
//  ColumarView.m
//  ColumnarDemo
//
//  Created by XSX on 16/3/14.
//  Copyright © 2016年 hivebox. All rights reserved.
//

#import "ColumarView.h"

@implementation ColumarView


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    double distanceNextYline = 14;
//    double bizieLineAligm = 10;
    
    double startX = 10;
    double controlX = 7;
//    double maxValue = 100;
    double coefficient = 100 / 90;
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    float columar[] = {12.8,1.8,32.8,4,21,34,56,23,14,8,3,-38,-66,90};

    CGMutablePathRef spadePath = CGPathCreateMutable();
    CGPathMoveToPoint(spadePath, NULL, startX, 100 - 12.8 * coefficient);
    //开始点
    
    for (int i = 1; i < sizeof(columar) / sizeof(columar[0]); i++) {
        CGPathAddCurveToPoint(spadePath, NULL, startX+controlX, 100 - columar[i] * coefficient, startX+distanceNextYline-controlX, 100 - columar[i] * coefficient, startX+distanceNextYline, 100 - columar[i] * coefficient);
        startX += distanceNextYline;
//        corectPointer1 = downToXline - demoData[i]*coefficient;
    }
    [[UIColor colorWithRed:229.0/255.0f green:168.0/255.0f blue:10.0/255.0f alpha:1.0f] set];
    CGContextSetLineWidth(contextRef, 2);
    CGContextAddPath(contextRef, spadePath);
    
    CGContextStrokePath(contextRef);
    
    
//    float columar[] = {12.8,1.8,32.8,4,21,34,56,23,14,8,3,-38,-66,90};
//    
//    float coefficient = 100 / 56;
//    
//    CGFloat horizontal = 20;
//    CGFloat horizontalWidth = 10;
//    CGFloat vertical = 100;
//    
//    for (NSInteger i = 0; i < sizeof(columar) / sizeof(columar[0]);i++) {
//        
//        CGContextSetStrokeColorWithColor(contextRef, [UIColor redColor].CGColor);
//        CGContextSetFillColorWithColor(contextRef, [UIColor redColor].CGColor);
//        CGMutablePathRef pathRef = CGPathCreateMutable();
//        CGPathMoveToPoint(pathRef, NULL, horizontal, vertical);
//        CGPathAddLineToPoint(pathRef, NULL, horizontal, -columar[i] * coefficient + vertical);
//        CGPathAddLineToPoint(pathRef, NULL, horizontal + horizontalWidth, -columar[i] * coefficient + vertical);
//        CGPathAddLineToPoint(pathRef, NULL, horizontal + horizontalWidth, vertical);
//        CGPathCloseSubpath(pathRef);
//        CGContextAddPath(contextRef, pathRef);
//        CGContextFillPath(contextRef);
//        CGContextStrokePath(contextRef);
//        CGPathRelease(pathRef);
//        
//        NSString *valueString = [NSString stringWithFormat:@"%f",columar[i]] ;
//        CGFloat columarValue = ((-columar[i] * coefficient + vertical) <vertical )? 12 : 0;
////              CGFloat columarValue = 0;
//        NSLog(@"com ==== %f",columarValue);
//        [valueString drawInRect:CGRectMake(horizontal,  (-columar[i] * coefficient + vertical) - columarValue, 22, 12) withAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10.0f]}];
//        horizontal += 20;
//        
//    }
    
    
}

@end
