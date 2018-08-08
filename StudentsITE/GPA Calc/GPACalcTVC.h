//
//  GPACalcTVC.h
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface GPACalcTVC : UITableViewController <UIScrollViewDelegate>
-(NSInteger)GradeToScale:(NSString *)Grade;

@property (strong, nonatomic) IBOutlet UITextField *gdCMOS;
@property (strong, nonatomic) IBOutlet UITextField *gdNT;
@property (strong, nonatomic) IBOutlet UISwitch *gdSW1;
@property (strong, nonatomic) IBOutlet UITextField *gdLS1;
@property (strong, nonatomic) IBOutlet UITextField *gdADE;
@property (strong, nonatomic) IBOutlet UITextField *gdSYSAD;
@property (strong, nonatomic) IBOutlet UISwitch *gdSW2;
@property (strong, nonatomic) IBOutlet UITextField *gdLS2;
@property (strong, nonatomic) IBOutlet UITextField *gdMAE;
@property (strong, nonatomic) IBOutlet UITextField *gdIAD;

@property (strong, nonatomic) IBOutlet UISwitch *gdSW3;

@property (strong, nonatomic) IBOutlet UITextField *gdLSE;
@property (strong, nonatomic) IBOutlet UITextField *gdIA;
@property (strong, nonatomic) IBOutlet UITextField *gdMSD;
@property (strong, nonatomic) IBOutlet UISwitch *gdSW4;
@property (strong, nonatomic) IBOutlet UISwitch *gdElect;
@property (strong, nonatomic) IBOutlet UITableViewCell *CellElect;

@property (strong, nonatomic) IBOutlet UISwitch *ElectYN;

- (IBAction)BtnElectYN:(id)sender;

- (IBAction)PF3:(id)sender;

- (IBAction)PF1:(id)sender;
- (IBAction)PF4:(id)sender;
- (IBAction)PF5:(id)sender;

- (IBAction)PF2:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *PF3;
@property (strong, nonatomic) IBOutlet UILabel *lblPF1;
@property (strong, nonatomic) IBOutlet UILabel *lblPF2;
@property (strong, nonatomic) IBOutlet UILabel *lblPF3;
@property (strong, nonatomic) IBOutlet UILabel *lblPF4;
@property (strong, nonatomic) IBOutlet UILabel *lblPF5;

- (IBAction)btnCalc:(id)sender;
- (IBAction)btnMain:(id)sender;
@end


