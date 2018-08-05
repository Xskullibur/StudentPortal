//
//  FamilyInfoTVC.h
//  StudentsITE
//
//  Created by Alson on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FamilyMember.h"

@interface FamilyInfoTVC : UITableViewController <UIScrollViewDelegate>

@property FamilyMember* FamilyMember;
@property NSInteger NoOfFamily;
@property NSMutableArray* Family;
- (IBAction)doneBtn:(id)sender;
- (IBAction)mainBtn:(id)sender;

@end
