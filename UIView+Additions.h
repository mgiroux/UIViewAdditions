//
//  Additions.h
//  TestApp
//
//  Created by Marc Giroux on 2015-05-03.
//  Copyright (c) 2015 Marc Giroux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (Additions)

/* CGFrame shortcut */
- (void)setSize:(CGSize)size;
- (void)setPosition:(CGPoint)position;

/* Round corners */
- (void)roundCorners:(CGFloat)radius;
- (void)roundCornersWithBorder:(CGFloat)radius borderSize:(CGFloat)borderSize borderColor:(UIColor *)color;

/* Round view */
- (void)rounded;
- (void)roundedWithBorder:(CGFloat)borderSize borderColor:(UIColor *)color;

/* Remove all subviews */
- (void)removeChildren;

/* Init with parent */
- (instancetype)initWithParent:(UIView *)parent;
+ (instancetype)viewWithParent:(UIView *)parent;


@end