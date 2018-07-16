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
    
    _userDetails = [[UsersDetails alloc] init];
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
    
    if ([_userDetails LoginWithNRIC:_txtUser.text andPassword:_txtPass.text] == 1) {
        NSLog(@"Success");
        NSLog(@"%ld", (long)_userDetails.UserIndex);
    }
    else{
        NSLog(@"Fail");
    }
    
}
@end
