//
//  ARUIButtonDefaultStyle.h
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIButton (ARCategoriesForUIButton)

@property (assign,nonatomic) CGColorRef normalStateColor;
@property (copy,nonatomic) UIColor *highlightColor;

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

