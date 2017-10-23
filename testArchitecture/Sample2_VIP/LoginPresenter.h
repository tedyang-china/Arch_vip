//
//  LoginPresenter.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginProtocols.h"

@interface LoginPresenter : NSObject <LoginInteractorOutput>

@property(nonatomic, strong) id<LoginInteractorInput> interactorInput;
@property(nonatomic, weak) id<LoginPresenterOutput> loginViewOutput;

-(void)resetViewInfo;
-(void)userLogin:(NSString *)username andPassword:(NSString *)password;

@end
