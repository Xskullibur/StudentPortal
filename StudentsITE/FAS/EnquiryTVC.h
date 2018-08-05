//
//  EnquiryTVC.h
//  StudentsITE
//
//  Created by Alson on 21/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnquiryTVC : UITableViewController

- (IBAction)ContinueBtn:(id)sender;
- (IBAction)menuBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *singaporeanSW;
@property (weak, nonatomic) IBOutlet UISwitch *scholarshipSW;

@end
