//
//  WhiteView.m
//  事件响应
//
//  Created by zenglun on 16/5/26.
//  Copyright © 2016年 ZL. All rights reserved.
//

#import "WhiteView.h"
#import "UIView+WDKit.h"

@interface WhiteView()

@property (nonatomic, weak) IBOutlet UIView *yellowView;
@property (nonatomic, weak) IBOutlet UIView *greenView;

@end

@implementation WhiteView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self handleTapGestureWithBlock:^{
        NSLog(@"白色视图被点击");
    }];
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"hitTest----%@", [self class]);
//    CGPoint yellowPoint = [self convertPoint:point toView:_yellowView];
//    if ([_yellowView pointInside:yellowPoint withEvent:event]) {
//        return _yellowView;
//    }
//    
//    return [super hitTest:point withEvent:event];
//}
//或
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGPoint hitPoint = [_greenView convertPoint:point fromView:self];
    if ([_greenView pointInside:hitPoint withEvent:event])
        return _greenView;
    return [super hitTest:point withEvent:event];
}


//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    CGPoint yellowPoint =[_yellowView convertPoint:point fromView:self];
//    if ([_yellowView pointInside:yellowPoint withEvent:event]) return NO;
//    
//    return [super pointInside:point withEvent:event];
//}




@end
