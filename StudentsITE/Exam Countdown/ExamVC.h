//
//  ExamVC.h
//  StudentsITE
//
//  Created by Alson on 24/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExamVC : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

- (IBAction)mainBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *daysLbl;
@property (weak, nonatomic) IBOutlet UILabel *hoursLbl;
@property (weak, nonatomic) IBOutlet UILabel *minsLbl;
@property (weak, nonatomic) IBOutlet UILabel *secLbl;
@property (weak, nonatomic) IBOutlet UILabel *examLbl;
@property (weak, nonatomic) IBOutlet UILabel *dateLbl;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;


@property NSDate* examDate;
@property NSDate* currentDate;

@end
