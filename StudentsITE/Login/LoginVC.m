//
//  LoginVC.m
//  StudentsITE
//
//  Created by Student2 on 11/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "LoginVC.h"
#import "UsersDetails.h"


@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnLogin:(id)sender{
    
    UsersDetails* userDetails = [[UsersDetails alloc] init];
    
    NSInteger index;
    
    //Check NRIC Array for Input NRIC
    if ([[userDetails.userInfo objectAtIndex:0] containsObject:_txtUser.text]) {
        
        //Get Index Of UserInfo
        index = [[userDetails.userInfo objectAtIndex:0] indexOfObject:_txtUser.text];
        
        //Check Password
        if ([[[userDetails.userInfo objectAtIndex:1] objectAtIndex:index] isEqualToString:_txtPass.text]) {
            NSLog(@"Logged In");
        }
        else{
            NSLog(@"Invalid Password");
        }
        
    }
    else{
        //Alert Student Doesnt Exist
        NSLog(@"Invalid UserID");
        
    }
    
}
@end
