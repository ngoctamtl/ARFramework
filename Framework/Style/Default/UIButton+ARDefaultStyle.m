//
//  UIButton+ARDefaultStyle.m
//  Framework
//
//  Created by Nhat Huy on 11/12/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "UIButton+ARDefaultStyle.h"
#import "UIColor+iOS7Colors.h"

#import <objc/runtime.h>

static char *KeyNormalStateColor = "normalStateColor";
static char *KeyHighlightStateColor = "highlightStateColor";


@implementation UIButton (ARDefaultStyle)
@dynamic normalStateColor, highlightStateColor;

- (void)drawRect:(CGRect)rect {
    
    [self defaultStyle];
}

- (void)defaultStyle {
    
    [self.layer setMasksToBounds:NO];
    [self.layer setCornerRadius:10];
    [self.layer setShadowColor:[UIColor iOS7darkGrayColor].CGColor];
    [self.layer setShadowOpacity:1];
    [self.layer setShadowOffset:CGSizeMake(0.5, 0.5)];
    [self.layer setShadowRadius:1];
    
    [self setBackgroundColor:[UIColor iOS7blueGradientStartColor] withHighlightColor:[UIColor iOS7tealGradientStartColor]];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor withHighlightColor:(UIColor *)highlightColor {
    
    [self.layer setBackgroundColor:backgroundColor.CGColor];
    [self setNormalStateColor:backgroundColor];
    [self setHighlightStateColor:highlightColor];
}



#pragma mark - Setter Properties

- (void)setNormalStateColor:(UIColor *)normalStateColor {
    
    objc_setAssociatedObject(self, KeyNormalStateColor, normalStateColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)setHighlightStateColor:(UIColor *)highlightStateColor {
    
    objc_setAssociatedObject(self, KeyHighlightStateColor, highlightStateColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark - Getter Properties

- (UIColor *)normalStateColor {
    
    UIColor *color = objc_getAssociatedObject(self, KeyNormalStateColor);
    return color;
}

- (UIColor *)highlightStateColor {
    
    UIColor *color = objc_getAssociatedObject(self, KeyHighlightStateColor);
    return color;
}

#pragma mark - Tracking touch

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [self.layer setBackgroundColor:self.highlightStateColor.CGColor];
    return YES;
}

- (void)cancelTrackingWithEvent:(UIEvent *)event {
    
    [self.layer setBackgroundColor:self.normalStateColor.CGColor];
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [self.layer setBackgroundColor:self.normalStateColor.CGColor];
}

@end
