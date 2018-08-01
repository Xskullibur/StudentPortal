//
//  FamilyInfoTVC.m
//  StudentsITE
//
//  Created by Alson on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "FamilyInfoTVC.h"
#import "FamilyMemberCell.h"
#import "AvailableFasVC.h"

@interface FamilyInfoTVC ()

@end

@implementation FamilyInfoTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _Family = [[NSMutableArray alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return _NoOfFamily;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 130;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return @"Family Member Info:";
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    
    AvailableFasVC *vc = [segue destinationViewController];
    vc.Family = _Family;
    
    // Pass the selected object to the new view controller.
}


- (IBAction)doneBtn:(id)sender {
    
    [_Family removeAllObjects];
    
    for (int i = 0; i < _NoOfFamily; i++) {
        
        FamilyMemberCell* cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:i]];
        
        //If Cell Is Empty
        if ([cell.nameTxt.text isEqual: @""] || [cell.relationshipTxt.text isEqual: @""] || [cell.gmiTxt.text isEqual: @""]) {
            
            //Empty Alert
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Missing Fields" message:@"Please Fill In All Fields!" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
            
            [alert addAction: okButton];
            [self presentViewController:alert animated:YES completion:nil];
            
            //Stop Loop
            break;
            
        }
        else{
            
            //Continue Adding
            FamilyMember* member = [[FamilyMember alloc] initWithName:cell.nameTxt.text andRelationship:cell.relationshipTxt.text andGMI:[cell.gmiTxt.text doubleValue]];
            [_Family addObject:member];
            
        }
        
    }
    
    for (FamilyMember* member in _Family) {
        
        NSLog(@"%@ Name: ", member.Name);
        NSLog(@"%@ Relationship: ", member.Relationship);
        NSLog(@"%ld GMI: ", (long)member.GMI);
        
    }
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [[self.view window] endEditing:YES];
    
}

@end
