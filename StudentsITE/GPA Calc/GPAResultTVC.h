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

@end
