//
//  UIView+Category.h
//  LGJSegmentHeaderPage
//
//  Created by 劉光軍 on 2017/6/19.
//  Copyright © 2017年 劉光軍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Category)

@property(nonatomic, assign) CGFloat x;
@property(nonatomic, assign) CGFloat y;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGSize size;
@property(nonatomic, assign) CGPoint origin;
@property(nonatomic, assign, readonly) CGFloat bottomFromSuperView;

@end
