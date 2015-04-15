//
//  ViewController.m
//  UINavigationAndButtons
//
//  Created by Yung Dai on 2015-04-15.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favourites";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_favorites"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
    
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    [self.view addSubview:imageView];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame= CGRectMake(60, 300, 200, 44);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
    

    
}

- (void)showProfile {
    NSLog(@"You've clicked the view profile button");
}


- (void)loadView {
    // creating the view controller ont the fly
    CGRect viewRect = [[UIScreen mainScreen]bounds];
    UIView *view = [[UIView alloc]initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
