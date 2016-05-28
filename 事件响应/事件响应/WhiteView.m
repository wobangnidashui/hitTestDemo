//
//  WhiteView.m
//  事件响应
//
//  Created by zenglun on 16/5/26.
//  Copyright © 2016年 ZL. All rights reserved.
//

#import "WhiteView.h"

@interface WhiteView()

@property (nonatomic, weak) IBOutlet UIView *yellowView;

@end

@implementation WhiteView

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"hitTest----%@", [self class]);
//    CGPoint yellowPoint = [self convertPoint:point toView:_yellowView];
//    if ([_yellowView pointInside:yellowPoint withEvent:event]) {
//        return _yellowView;
//    }
//    
//    return [super hitTest:point withEvent:event];
//}


//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    CGPoint yellowPoint =[_yellowView convertPoint:point fromView:self];
//    if ([_yellowView pointInside:yellowPoint withEvent:event]) return NO;
//    
//    return [super pointInside:point withEvent:event];
//}


@end
