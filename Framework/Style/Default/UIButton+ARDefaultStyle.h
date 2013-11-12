//
//  UIButton+ARDefaultStyle.h
//  Framework
//
//  Created by Nhat Huy on 11/12/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIButton (ARDefaultStyle)

/**
 *  Button color in normal state
 */
@property (copy,nonatomic) UIColor *normalStateColor;

/**
 *  Button color in highlight state
 */
@property (copy,nonatomic) UIColor *highlightStateColor;

/**
 *  Default style of this framework
 */
- (void)defaultStyle;

/**
 *  Set backgroud color for highlight stage
 *
 *  @param backgroundColor backgroundColor in normal state
 *  @param highlightColor  backgroundColor in highlight state
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor withHighlightColor:(UIColor *)highlightColor;


@end
