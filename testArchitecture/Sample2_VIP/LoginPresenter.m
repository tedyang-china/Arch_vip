//
//  LoginPresenter.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginPresenter.h"

@implementation LoginPresenter

@synthesize interactorInput;
@synthesize loginViewOutput;

-(void)resetViewInfo
{
   [loginViewOutput showErrorTips:@""];
}

-(void)userLogin:(NSString *)username andPassword:(NSString *)password
{
    //TODO:1.check。2.调用interactor
    if ([self checkUserInput:username andPassword:password])
    {
        [interactorInput userLogin:username andPassword:password];
    }
    else
    {
         [loginViewOutput showErrorTips:@"username or password is nil!!!"];
    }
}

#pragma mark -- LoginInteractorOutput

- (void)loginSuceess
{
    [loginViewOutput skipToMainPage:@"Skip to main page"];
}
- (void)loginFail:(NSString *)msg;
{
    [loginViewOutput showErrorTips:[NSString stringWithFormat:@"login failed:%@",msg]];
}

#pragma mark -- private method
- (BOOL)checkUserInput:(NSString *)username andPassword:(NSString *)password
{
    return (username.length == 0 || password.length == 0) ? NO : YES;
}


@end
