//
//  DetailViewController.m
//  AltitudeLabs
//
//  Created by Li Siu Leung on 24/11/14.
//  Copyright (c) 2014 Li Siu Leung. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)backEvent:(id)sender {
    LoginViewController *loginVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self presentViewController:loginVC animated:NO completion:nil];
}

- (IBAction)imageBtnEvent:(id)sender {
    UIAlertView *msg = [[UIAlertView alloc] initWithTitle:@""
                                                  message:@"Hello World"
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
    [msg show];
}

@end
