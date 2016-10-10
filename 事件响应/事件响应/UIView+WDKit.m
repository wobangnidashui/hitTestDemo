//
//  UIView+WDKit.m
//  IOS-Weidai
//
//  Created by cuihh on 16/6/3.
//  Copyright © . All rights reserved.
//

#import "UIView+WDKit.h"
#import <objc/runtime.h>

@interface UIView()

@property (nonatomic,copy) gestureTapBlock gestureBlock;

@end

@implementation UIView (WDKit)

static char blockKey;

-(void)handleTapGestureWithBlock:(gestureTapBlock)block{
    self.gestureBlock = block;
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureAction)];
    [self addGestureRecognizer:tapGesture];
}

-(void)gestureAction{
    if (self.gestureBlock) {
        self.gestureBlock();
    }
}

-(void)setGestureBlock:(gestureTapBlock)gestureBlock{
    objc_setAssociatedObject(self, &blockKey, gestureBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(gestureTapBlock)gestureBlock{
    return objc_getAssociatedObject(self, &blockKey);
}

@end
