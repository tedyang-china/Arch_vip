//
//  LoginInteractor.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginProtocols.h"

@interface LoginInteractor : NSObject <LoginInteractorInput>

@property(nonatomic, strong) id<LoginInteractorOutput> loginPresenter;

@end
