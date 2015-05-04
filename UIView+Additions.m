//
//  Additions.m
//  TestApp
//
//  Created by Marc Giroux on 2015-05-03.
//  Copyright (c) 2015 Marc Giroux. All rights reserved.
//

#import "UIView+Additions.h"

@implementation UIView (Additions)

/* Frame shortcuts */
- (void)setSize:(CGSize)size
{
    self.size   = size;
    CGRect rect = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
    self.frame  = rect;
}

- (void)setPosition:(CGPoint)position
{
    self.position = position;
    CGRect rect   = CGRectMake(position.x, position.y, self.frame.size.width, self.frame.size.height);
    self.frame    = rect;
}

- (void)roundCorners:(CGFloat)radius
{
    self.layer.cornerRadius  = radius;
    self.layer.masksToBounds = YES;
}

- (void)roundCornersWithBorder:(CGFloat)radius borderSize:(CGFloat)borderSize borderColor:(UIColor *)color
{
    CGPoint center           = self.center;
    self.layer.cornerRadius  = radius;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth   = borderSize;
    self.layer.borderColor   = color.CGColor;
    self.center              = center;
}

- (void)rounded
{
    CGPoint center           = self.center;
    self.layer.cornerRadius  = self.frame.size.width / 2.0f;
    self.layer.masksToBounds = YES;
    self.center              = center;
}

- (void)roundedWithBorder:(CGFloat)borderSize borderColor:(UIColor *)color
{
    CGPoint center           = self.center;
    self.layer.cornerRadius  = self.frame.size.width / 2.0f;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth   = borderSize;
    self.layer.borderColor   = color.CGColor;
    self.center              = center;
}

- (void)removeChildren
{
    for (id child in self.subviews) {
        [child removeFromSuperview];
    }
}

- (instancetype)initWithParent:(UIView *)parent
{
    self = [self initWithFrame:CGRectZero];
    
    [parent addSubview:self];
    
    return self;
}

+ (instancetype)viewWithParent:(UIView *)parent
{
    return [[self alloc] initWithParent:parent];
}

@end
