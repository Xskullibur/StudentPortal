//
//  GPACalcTVC.h
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface GPACalcTVC : UITableViewController
-(NSInteger)GradeToScale:(NSString *)Grade;

@property (strong, nonatomic) IBOutlet UITextField *gdCMOS;
@property (strong, nonatomic) IBOutlet UITextField *gdNT;
@property (strong, nonatomic) IBOutlet UITextField *gdSW1;
@property (strong, nonatomic) IBOutlet UITextField *gdPPD1;
@property (strong, nonatomic) IBOutlet UITextField *gdADE;
@property (strong, nonatomic) IBOutlet UITextField *gdSYSAD;
@property (strong, nonatomic) IBOutlet UITextField *gdSW2;
@property (strong, nonatomic) IBOutlet UITextField *gdPPD2;
@property (strong, nonatomic) IBOutlet UITextField *gdMAE;
@property (strong, nonatomic) IBOutlet UITextField *gdIAD;
@property (strong, nonatomic) IBOutlet UITextField *gdSW3;
@property (strong, nonatomic) IBOutlet UITextField *gdPM;
@property (strong, nonatomic) IBOutlet UITextField *gdIA;
@property (strong, nonatomic) IBOutlet UITextField *gdMSD;
@property (strong, nonatomic) IBOutlet UITextField *gdSW4;
- (IBAction)btnCalc:(id)sender;
- (IBAction)btnMain:(id)sender;
@end


