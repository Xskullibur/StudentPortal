//
//  NoOfFamilyVC.m
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "NoOfFamilyVC.h"
#import "FamilyInfoTVC.h"

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    FamilyInfoTVC *vc = [segue destinationViewController];
    vc.NoOfFamily = _stepperValue.value;
    
}


- (IBAction)stepperClicked:(id)sender {
    
    _numberTxt.text = [NSString stringWithFormat:@"%d", (int)_stepperValue.value];
    
}

- (IBAction)MenuBtn:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"MainMenu"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)numberTxt:(id)sender {
    
    _stepperValue.value = [_numberTxt.text floatValue];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_numberTxt resignFirstResponder];
    [[self.view window] endEditing:YES];
    
}

@end
