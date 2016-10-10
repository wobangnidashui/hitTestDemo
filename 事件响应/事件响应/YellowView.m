//
//  YellowView.m
//  事件响应
//
//  Created by zenglun on 16/5/26.
//  Copyright © 2016年 ZL. All rights reserved.
//

#import "YellowView.h"
#import "UIView+WDKit.h"

@implementation YellowView

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    return YES;
//}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self handleTapGestureWithBlock:^{
        NSLog(@"黄色视图被点击");
    }];
}

@end
