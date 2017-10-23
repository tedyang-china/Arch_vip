//
//  LoginInteractor.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginInteractor.h"

@implementation LoginInteractor

@synthesize loginPresenter;

-(void)userLogin:(NSString *)username andPassword:(NSString *)password
{
    if (username.length > 5 && password.length > 5)
    {
        [loginPresenter loginSuceess];
    }
    else
    {
        [loginPresenter loginFail:@"usernamge or password error!!!"];
    }
}

@end
