//
//  LoginPresenter.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginPresenter.h"

@implementation LoginPresenter

@synthesize loginInteractor;
@synthesize loginView;

-(void)resetViewInfo
{
   [loginView showErrorTips:@""];
}

-(void)userLogin:(NSString *)username andPassword:(NSString *)password
{
    //TODO:1.check。2.调用interactor
    if ([self checkUserInput:username andPassword:password])
    {
        [loginInteractor userLogin:username andPassword:password];
    }
    else
    {
         [loginView showErrorTips:@"username or password is nil!!!"];
    }
}

#pragma mark -- LoginInteractorOutput

- (void)loginSuceess
{
    //注：按照Viper的思想，可以在这里实现Router， 进行调转
    [loginView skipToMainPage:@"Main page"];
}
- (void)loginFail:(NSString *)msg;
{
    [loginView showErrorTips:[NSString stringWithFormat:@"login failed:%@",msg]];
}

#pragma mark -- private method
- (BOOL)checkUserInput:(NSString *)username andPassword:(NSString *)password
{
    return (username.length == 0 || password.length == 0) ? NO : YES;
}


@end
