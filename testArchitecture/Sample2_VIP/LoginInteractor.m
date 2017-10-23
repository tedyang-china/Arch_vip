//
//  LoginInteractor.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginInteractor.h"

@implementation LoginInteractor

@synthesize output;

-(void)userLogin:(NSString *)username andPassword:(NSString *)password
{
    if (username.length > 5 && password.length > 5)
    {
        [output loginSuceess];
    }
    else
    {
        [output loginFail:@"usernamge or password error!!!"];
    }
}

@end
