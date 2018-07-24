//
//  ExamVC.m
//  StudentsITE
//
//  Created by Alson on 24/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "ExamVC.h"

@interface ExamVC ()

@end

@implementation ExamVC

-(void) displayTime: (NSTimer *)timer{
    NSDateComponents * compare = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:[NSDate date] toDate:_examDate options:0];
    
    _daysLbl.text = [NSString stringWithFormat:@"%ld", [compare day]];
    _hoursLbl.text = [NSString stringWithFormat:@"%ld", [compare hour]];
    _minsLbl.text = [NSString stringWithFormat:@"%ld", [compare minute]];
    _secLbl.text = [NSString stringWithFormat:@"%ld", [compare second]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Declare Exam Date
    NSDateComponents* comps = [[NSDateComponents alloc] init];
    comps.year = 2018;
    comps.month = 9;
    comps.day = 4;
    comps.hour = 15;
    
    NSCalendar* calandar = [NSCalendar currentCalendar];
    _examDate = [calandar dateFromComponents:comps];
    
    //Display Info
    _examLbl.text = @"MAE Theory Exam";
    _dateLbl.text = [_examDate description];
    
    //Display Coutdown
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(displayTime:) userInfo:nil repeats:YES];
    
    
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

- (IBAction)mainBtn:(id)sender {
    
    UIStoryboard *mainScreen = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UICollectionViewController *mainVC = [mainScreen instantiateViewControllerWithIdentifier:@"MainMenu"];
    mainVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:mainVC animated:YES completion:nil];
    
}
@end
