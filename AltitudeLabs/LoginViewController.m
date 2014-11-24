//
//  LoginViewController.m
//  AltitudeLabs
//
//  Created by Li Siu Leung on 24/11/14.
//  Copyright (c) 2014 Li Siu Leung. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad]; 
    
    //setup instance object
    loginManager = [[LoginManager alloc] init];
    loginManager.delegate = self;
    
    //setup GUI
    m_textFieldPw.secureTextEntry = YES;
}

#pragma mark - LoginDelegate methods
- (void) onLoginSuccess
{
    //direct to next page
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    [self presentViewController:detailVC animated:NO completion:nil];
}

- (void) onLoginFail:(NSString *) failReason
{
    //show warning dialog
    UIAlertView *warning = [[UIAlertView alloc] initWithTitle:@"login fail"
                                                      message:failReason
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [warning show];
}

- (IBAction)loginEvent:(id)sender {
    loginManager.userName = m_textFieldUserName.text;
    loginManager.password = m_textFieldPw.text;
    [loginManager login];
}
@end
