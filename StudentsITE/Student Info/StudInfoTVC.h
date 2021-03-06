//
//  StudInfoTVC.h
//  StudentsITE
//
//  Created by Student2 on 24/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UsersDetails.h"
#import "AppDelegate.h"

@interface StudInfoTVC : UITableViewController{
    AppDelegate *AD;
}
@property (strong, nonatomic) IBOutlet UILabel *lbName;
@property (strong, nonatomic) IBOutlet UILabel *lbNRIC;
@property (strong, nonatomic) IBOutlet UILabel *lbAdd1;
@property (strong, nonatomic) IBOutlet UILabel *lbAdd2;
@property (strong, nonatomic) IBOutlet UILabel *lbAdd3;
@property (strong, nonatomic) IBOutlet UILabel *lbHp;
@property (strong, nonatomic) IBOutlet UILabel *lbEmail;

@property UsersDetails* UserDetails;
@property  NSMutableArray *UserInfo;
@property long userIndex;

- (IBAction)btnMain:(id)sender;
@end
