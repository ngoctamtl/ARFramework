//
//  ARUIButtonDefaultStyle.m
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "ARUIButtonDefaultStyle.h"
#import <objc/runtime.h>

static char *KeyNormalStateColor = "normalStateColor";
static char *KeyHighlightStateColor = "highlightStateColor";


@implementation UIButton (ARCategoriesForUIButton)
@dynamic normalStateColor, highlightColor;

- (void)drawRect:(CGRect)rect {
    
    [self defaultStyle];
}

- (void)defaultStyle {
    
    [self.layer setMasksToBounds:NO];
    [self.layer setCornerRadius:10];
    [self.layer setBackgroundColor:[UIColor whiteColor].CGColor];
    [self.layer setShadowColor:[UIColor darkTextColor].CGColor];
    [self.layer setShadowOpacity:1];
    [self.layer setShadowOffset:CGSizeMake(0.5, 0.5)];
    [self.layer setShadowRadius:1];
    
    [self setBackgroundColor:[UIColor whiteColor] withHighlightColor:[UIColor greenColor]];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor withHighlightColor:(UIColor *)highlightColor {
    
    [self setNormalStateColor:backgroundColor.CGColor];
    [self setHighlightColor:highlightColor];
}



#pragma mark - Setter Properties

- (void)setNormalStateColor:(CGColorRef)normalStateColor {
    
    objc_setAssociatedObject(self, KeyNormalStateColor, (__bridge id)(normalStateColor), OBJC_ASSOCIATION_ASSIGN);
}

- (void)setHighlightColor:(UIColor *)highlightColor {
    
    objc_setAssociatedObject(self, KeyHighlightStateColor, highlightColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark - Getter Properties

- (CGColorRef)getNormalStateColor {
    
    id color = objc_getAssociatedObject(self, KeyNormalStateColor);
    return (__bridge CGColorRef)color;
}

- (UIColor *)getHighlightColor {
    
    id color = objc_getAssociatedObject(self, KeyHighlightStateColor);
    return (UIColor *)color;
}

#pragma mark - Tracking touch

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    
    [self.layer setBackgroundColor:[self getHighlightColor].CGColor];
    return YES;
}

- (void)cancelTrackingWithEvent:(UIEvent *)event {
    
    [self.layer setBackgroundColor:([self getNormalStateColor])];
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [self.layer setBackgroundColor:([self getNormalStateColor])];
}

@end
