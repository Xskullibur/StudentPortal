//
//  LoginVC.m
//  StudentsITE
//
//  Created by Student2 on 11/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "LoginVC.h"
#import "MainMenuCVC.h"
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    UINavigationController* nc = [segue destinationViewController];
    MainMenuCVC *cvc = (MainMenuCVC*)nc.topViewController;
    cvc.userIndex = _userDetails.UserIndex;
    
}

- (IBAction)btnLogin:(id)sender{
    
    if ([_userDetails LoginWithNRIC:[_txtUser.text uppercaseString] andPassword:_txtPass.text] == 1) {
        
        //Debug Info
        NSLog(@"Success");
        NSLog(@"%ldUser Index: ", (long)_userDetails.UserIndex);
        
        /*
        UIStoryboard *mainScreen = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
        MainMenuCVC *mainVC = [mainScreen instantiateViewControllerWithIdentifier:@"MainMenu"];
        mainVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        //mainVC.userIndex = 1;
        
        [self presentViewController:mainVC animated:YES completion:nil];
         */
    }
    else{

        //Debug Info
        NSLog(@"Login Failed");
        
        //Failed Alert
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login Failed" message:@"Invalid NRIC or Password, Please Try Again..." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction: okButton];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_txtPass resignFirstResponder];
    [_txtUser resignFirstResponder];
    [[self.view window] endEditing: YES];
    
}

@end
