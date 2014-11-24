//
//  LoginManager.h
//  AltitudeLabs
//
//  Created by Li Siu Leung on 24/11/14.
//  Copyright (c) 2014 Li Siu Leung. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginDelegate <NSObject>
@required
- (void) onLoginSuccess;
- (void) onLoginFail:(NSString *) failReason;
@end

@interface LoginManager : NSObject
{
    
}

- (id)initWithUserName:(NSString *)userName Password:(NSString *)password;
- (void) login;

@property NSString *userName;
@property NSString *password;
@property id<LoginDelegate> delegate;




@end
