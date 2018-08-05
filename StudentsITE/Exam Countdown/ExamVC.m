//
//  ExamVC.m
//  StudentsITE
//
//  Created by Alson on 24/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "ExamVC.h"

@interface ExamVC (){
    
    NSArray *exams;
    
}

@end

@implementation ExamVC

-(void) displayTime: (NSTimer *)timer{
    NSDateComponents * compare = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:[NSDate date] toDate:_examDate options:0];
    
    if ([compare day] <= 0 && [compare hour] <= 0 && [compare minute] <= 0 && [compare second] <= 0) {
        
        _daysLbl.text = @"-";
        _hoursLbl.text = @"-";
        _minsLbl.text = @"-";
        _secLbl.text = @"-";
        _overLbl.hidden = false;
        
    }
    else{
        _overLbl.hidden = true;
        _daysLbl.text = [NSString stringWithFormat:@"%ld", [compare day]];
        _hoursLbl.text = [NSString stringWithFormat:@"%ld", [compare hour]];
        _minsLbl.text = [NSString stringWithFormat:@"%ld", [compare minute]];
        _secLbl.text = [NSString stringWithFormat:@"%ld", [compare second]];
    }
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return exams.count;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return exams[row][0];
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSDateComponents* comps = [[NSDateComponents alloc] init];
    comps.year = [exams[row][1] integerValue];
    comps.month = [exams[row][2] integerValue];
    comps.day = [exams[row][3] integerValue];
    comps.hour = [exams[row][4] integerValue];
    
    NSCalendar* calandar = [NSCalendar currentCalendar];
    _examDate = [calandar dateFromComponents:comps];
    
    _examLbl.text = exams[row][0];
    _dateLbl.text = [_examDate description];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDateComponents* currDate = [[NSCalendar currentCalendar] components: NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour fromDate:[NSDate date]];
    
    exams = @[@[@"MAE Theory Exam", @"2018", @"9", @"4", @"15"],
              @[@"S&W Theory Exam", @"2018", @"8", @"15", @"12"],
              @[@"Exam Over", [NSString stringWithFormat:@"%ld", [currDate year]], [NSString stringWithFormat:@"%ld", [currDate month]], [NSString stringWithFormat:@"%ld", [currDate day]], [NSString stringWithFormat:@"%ld", [currDate hour]]]];
    
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
    
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
