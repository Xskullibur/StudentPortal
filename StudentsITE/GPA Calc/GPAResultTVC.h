//
//  GPAResultTVC.h
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GPACalcTVC.h"

@interface GPAResultTVC : UITableViewController
@property (strong, nonatomic) IBOutlet UILabel *lbY1S1GPA;
@property (strong, nonatomic) IBOutlet UILabel *lbY1S2GPA;
@property (strong, nonatomic) IBOutlet UILabel *lbY2S1GPA;
@property (strong, nonatomic) IBOutlet UILabel *lbY2S2GPA;
@property (strong, nonatomic) IBOutlet UILabel *lbCLGPA;
@property NSInteger CMOS;
@property NSInteger NT;
@property NSInteger BM1;
@property NSInteger SW1;
@property NSInteger PPD1;

@property NSInteger ADE;
@property NSInteger SYSAD;
@property NSInteger SW2;
@property NSInteger PPD2;

@property NSInteger MAE;
@property NSInteger IAD;
@property NSInteger SW3;
@property NSInteger PM;

@property NSInteger IA;
@property NSInteger MSD;
@property NSInteger SW4;

@property NSInteger MainCU;
@property NSInteger ElectCU;
@property NSInteger LSCU;
@property NSInteger SWCU;
@property NSInteger IACU;

@end
