//
//  LoginVC.h
//  StudentsITE
//
//  Created by Student2 on 11/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UsersDetails.h"

@interface LoginVC : UIViewController
{
}
@property (weak, nonatomic) IBOutlet UITextField *txtUser;
@property (weak, nonatomic) IBOutlet UITextField *txtPass;
- (IBAction)btnLogin:(id)sender;

@end
