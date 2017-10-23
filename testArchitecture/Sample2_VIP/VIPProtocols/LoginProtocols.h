//
//  LoginProtocols.h
//  testArchitecture2
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginInteractorInput <NSObject>

@required
-(void)userLogin:(NSString *)username andPassword:(NSString *)password;

@end


@protocol LoginInteractorOutput <NSObject>

@required
- (void)loginSuceess;
- (void)loginFail:(NSString *)msg;

@end


@protocol LoginPresenterOutput <NSObject>

@required
- (void)showErrorTips:(NSString *)tips;
- (void)skipToMainPage:(NSString *)msg;

@end

