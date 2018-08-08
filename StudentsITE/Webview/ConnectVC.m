//
//  ConnectVC.m
//  StudentsITE
//
//  Created by Student2 on 25/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "ConnectVC.h"

@interface ConnectVC ()

@end

@implementation ConnectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlNameInString = @"http://myconnexion.ite.edu.sg/";
    NSURL *url = [NSURL URLWithString:urlNameInString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    _MyConnect.autoresizesSubviews = YES;
    _MyConnect.scalesPageToFit = YES;
    _MyConnect.frame = self.view.frame;
    [_MyConnect loadRequest:urlRequest];

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
    UIStoryboard *mainScreen = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UICollectionViewController *mainVC = [mainScreen instantiateViewControllerWithIdentifier:@"MainMenu"];
    mainVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:mainVC animated:YES completion:nil];
}
@end
