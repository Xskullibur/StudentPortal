//
//  NoOfFamilyVC.m
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "NoOfFamilyVC.h"

@interface NoOfFamilyVC ()

@end

@implementation NoOfFamilyVC

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

- (IBAction)stepperClicked:(id)sender {
    
    _numberLbl.text = [@"Number of Family Members: " stringByAppendingString:[NSString stringWithFormat:@"%d", (int)_stepperValue.value] ];
    
}

- (IBAction)mainMenuClicked:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"MainMenu"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)backBtn:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"FAS" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"EnquiryTVC"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
