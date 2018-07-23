//
//  NoOfFamilyVC.h
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoOfFamilyVC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *numberLbl;
@property (weak, nonatomic) IBOutlet UIStepper *stepperValue;
- (IBAction)stepperClicked:(id)sender;
- (IBAction)mainMenuClicked:(id)sender;
- (IBAction)backBtn:(id)sender;

@end
