//
//  ARAboutMeController.m
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "ARAboutMeController.h"
#import "ARUIImageViewDefaultStyle.h"
#import "ARUITableViewDefaultStyle.h"
#import "UIButton+ARDefaultStyle.h"

#import <QuartzCore/QuartzCore.h>


@implementation ARAboutMeController

- (void)viewDidLoad {
    
    [self.avatar defaultStyle];
    [self.scrollView setContentSize:CGSizeMake(1000, 10000)];
    
}

#pragma mark - Information TableView datasource

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Information";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *queueString = @"QueueString";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:queueString];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] init];
    }
    
    cell.textLabel.text = @"Hello world";
    
    return cell;
}

@end


