//
//  LoginViewController.h
//  WorkDemo
//
//  Created by Abao on 15-7-12.
//  Copyright (c) 2015年 Ever. All rights reserved.
//

#import "BaseViewController.h"

@interface LoginViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *userTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

- (IBAction)registerAction:(id)sender;

@end
