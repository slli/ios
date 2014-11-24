//
//  LoginViewController.h
//  AltitudeLabs
//
//  Created by Li Siu Leung on 24/11/14.
//  Copyright (c) 2014 Li Siu Leung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginManager.h"
#import "DetailViewController.h"

@interface LoginViewController : UIViewController <LoginDelegate>
{
    LoginManager *loginManager;
    __weak IBOutlet UITextField *m_textFieldUserName;
    __weak IBOutlet UITextField *m_textFieldPw;
}

- (IBAction)loginEvent:(id)sender;


@end
