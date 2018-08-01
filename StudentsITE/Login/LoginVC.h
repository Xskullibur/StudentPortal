//
//  LoginVC.h
//  StudentsITE
//
//  Created by Student2 on 11/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UsersDetails.h"
#import "AppDelegate.h"

@interface LoginVC : UIViewController <UITextFieldDelegate>
{
    AppDelegate *AD;
}

@property (weak, nonatomic) IBOutlet UITextField *txtUser;
@property (weak, nonatomic) IBOutlet UITextField *txtPass;
- (IBAction)btnLogin:(id)sender;

@property(strong, nonatomic) UsersDetails* userDetails;

@end
