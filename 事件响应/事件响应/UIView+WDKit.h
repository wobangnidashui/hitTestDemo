//
//  UIView+WDKit.h
//  IOS-Weidai
//
//  Created by cuihh on 16/6/3.
//  Copyright © . All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ gestureTapBlock)();

@interface UIView (WDKit)

-(void)handleTapGestureWithBlock:(gestureTapBlock)block;

@end
