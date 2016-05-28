//
//  GreenView.m
//  事件响应
//
//  Created by zenglun on 16/5/26.
//  Copyright © 2016年 ZL. All rights reserved.
//

#import "GreenView.h"

@interface GreenView()
@property (nonatomic, weak) IBOutlet UIView *whiteView;
@end

@implementation GreenView

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"hitTest----%@", [self class]);
//    CGPoint whitePoint = [self convertPoint:point toView:_whiteView];
//    if ([_whiteView pointInside:whitePoint withEvent:event]) {
//        return _whiteView;
//    }
//    
//    return [super hitTest:point withEvent:event];
//}

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    return NO;
//}

@end
