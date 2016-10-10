//
//  UIView+WDKit.h
//  IOS-Weidai
//
//  Created by cuihh on 16/6/3.
//  Copyright © 2016年 微贷（杭州）金融信息服务有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ gestureTapBlock)();

@interface UIView (WDKit)

///> 添加一个点击事件
-(void)handleTapGestureWithBlock:(gestureTapBlock)block;

@end
