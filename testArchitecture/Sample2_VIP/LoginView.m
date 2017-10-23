//
//  ViewController.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/10.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

@synthesize presenter;

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [presenter resetViewInfo];
}

- (IBAction)onclick:(id)sender {
    NSLog(@"on click .... ");
    [presenter userLogin:self.usernameTf.text andPassword:self.passwordTf.text];
}


#pragma mark -- LoginPresenterOutput

- (void)showErrorTips:(NSString *)tips
{
    self.errtipsLb.text = tips;
    self.usernameTf.text = @"";
    self.passwordTf.text = @"";
}

- (void)skipToMainPage:(NSString *)router
{
    [[[UIAlertView alloc] initWithTitle:nil message:@"Next Page" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}


@end
