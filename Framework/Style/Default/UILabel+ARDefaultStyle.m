//
//  UILabel+ARDefaultStyle.m
//  Framework
//
//  Created by Nhat Huy on 11/12/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "UILabel+ARDefaultStyle.h"
#import "ARCategoryExtensions.h"

@implementation UILabel (ARDefaultStyle)


- (void)didMoveToSuperview {
    
    [self setFont:[UIFont fontWithName:@"Helvetica-light" size:self.font.pointSize]];
}

- (void)defaultStyle {
    
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:14];
    [self.layer setBorderColor:[UIColor MetroAsbestos].CGColor];
    [self.layer setBorderWidth:0.5];
}

@end
