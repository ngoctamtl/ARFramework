//
//  ARUIImageViewDefaultStyle.m
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "ARUIImageViewDefaultStyle.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImageView (ARCategoriesForUIImageView)

- (void)drawRect:(CGRect)rect {
    
    [self defaultStyle];
}

- (void)defaultStyle {
    
    // Round corner
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:CGRectGetWidth(self.frame)/2];
    
    // Border radius
    [self.layer setBorderWidth:2];
    [self.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    
}

@end
