//
//  GPACalcVC.m
//  StudentsITE
//
//  Created by Student2 on 18/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "GPACalcVC.h"

@interface GPACalcVC ()

@end

@implementation GPACalcVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(8, 79, 637, 770)];
    
    [self.view addSubview:scrollView];
    
    [scrollView setContentSize:CGSizeMake(scrollView.bounds.size.width, scrollView.bounds.size.height*1.2)];
    
  
    
    [scrollView addSubview:lbY1];
    [scrollView addSubview:lbsem1];
    [scrollView addSubview:lbmod1_1];
    [scrollView addSubview:lbmod2_1];
    [scrollView addSubview:lbLS1];
    
    [scrollView addSubview:lbsem2];
    [scrollView addSubview:lbmod3_1];
    [scrollView addSubview:lbmod4_1];
    [scrollView addSubview:lbLS2];
    
    [scrollView addSubview:lbY2];
    [scrollView addSubview:lbsem1_2];
    [scrollView addSubview:lbmod1_2];
    [scrollView addSubview:lbmod2_2];
    [scrollView addSubview:lbLS1_2];
    
    [scrollView addSubview:lbsem2_2];
    [scrollView addSubview:lbmod3_2];
    [scrollView addSubview:lbmod4_2];
    [scrollView addSubview:lbLS2_2];
    
    
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

@end
