//
//  LoginManager.m
//  AltitudeLabs
//
//  Created by Li Siu Leung on 24/11/14.
//  Copyright (c) 2014 Li Siu Leung. All rights reserved.
//

#import "LoginManager.h"

@interface LoginManager ()
- (void) validateLoginData;
@end

@implementation LoginManager
@synthesize userName, password, delegate;

const int USER_NAME_MIN_LENGTH = 8;
const int PASSWORD_MIN_LENGTH = 8;

- (id)initWithUserName:(NSString *)userName Password:(NSString *)password
{
    self = [super init];
    if (self) {
        self.userName = userName;
        self.password = password;
    }
    return self;
    
}

- (void) validateLoginData
{
    //check user name length
    if (userName.length < USER_NAME_MIN_LENGTH) {
        NSString *msg = [NSString stringWithFormat:@"user name should be at least %d letters!", USER_NAME_MIN_LENGTH];
        [delegate onLoginFail:msg];
        return;
    }
    
    //check user name alphabetic
    NSCharacterSet *letterSet = [NSCharacterSet letterCharacterSet];
    BOOL isAlphabetic = [[userName stringByTrimmingCharactersInSet:letterSet] isEqualToString:@""];
    if (!isAlphabetic) {
        NSString *msg = @"user name should be alphabetic!";
        [delegate onLoginFail:msg];
        return;
    }
    
    //check password length
    if (password.length < PASSWORD_MIN_LENGTH) {
        NSString *msg = [NSString stringWithFormat:@"password length should be at least %d letters!", USER_NAME_MIN_LENGTH];
        [delegate onLoginFail:msg];
        return;
    }
    
    [delegate onLoginSuccess];
}

///login with user name and password
- (void) login
{
    [self validateLoginData];
}


@end
