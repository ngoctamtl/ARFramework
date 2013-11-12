//
//  ARAboutMeController.h
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ARAboutMeController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak,nonatomic) IBOutlet UIImageView *avatar;
@property (weak,nonatomic) IBOutlet UILabel *name;
@property (weak,nonatomic) IBOutlet UITableView *information;
@property (weak,nonatomic) IBOutlet UIButton *facebookBtn;
@property (weak,nonatomic) IBOutlet UIButton *githubBtn;
@property (weak,nonatomic) IBOutlet UIButton *blogBtn;
@property (weak,nonatomic) IBOutlet UIScrollView *scrollView;

@end
