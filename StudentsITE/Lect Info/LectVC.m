//
//  LectVC.m
//  StudentsITE
//
//  Created by Student2 on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "LectVC.h"

@interface LectVC ()

@end

@implementation LectVC

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

- (IBAction)btnMain:(id)sender {
    UIStoryboard *MainMenuStoryboard = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UIViewController *MainMenuVC = [MainMenuStoryboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    MainMenuVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:MainMenuVC animated:YES completion:nil];
}
@end
