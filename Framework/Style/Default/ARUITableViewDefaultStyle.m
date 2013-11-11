//
//  ARUITableViewDefaultStyle.m
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "ARUITableViewDefaultStyle.h"
#import <QuartzCore/QuartzCore.h>

@implementation  UITableView (ARCategoriesForUITableView)

- (void)drawRect:(CGRect)rect {
    
    [self defaultStyle];
}

- (void)defaultStyle {
    
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:14];
    [self.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    [self.layer setBorderWidth:2];
}

@end
