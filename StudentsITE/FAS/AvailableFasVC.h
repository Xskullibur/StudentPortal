//
//  AvailableFasVC.h
//  StudentsITE
//
//  Created by Alson on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FamilyMember.h"

@interface AvailableFasVC : UIViewController

- (IBAction)mainBtn:(id)sender;

@property CGFloat PCI;
@property FamilyMember* FamilyMember;
@property NSMutableArray* Family;
@property (weak, nonatomic) IBOutlet UITextField *pciTxt;
@property NSMutableArray* FasInfo;
@property NSMutableArray* FasInfo1;
@property NSMutableArray* FAS;

@end

