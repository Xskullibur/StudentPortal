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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"AllBackground"]];
    
    [self setupKeyboardDismissTaps];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard{
    
    [self.view endEditing:YES];
    
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    [self dismissKeyboard];
}

-(void)setupKeyboardDismissTaps {
    
    //Tap Gesture
    UITapGestureRecognizer *TGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.tableView addGestureRecognizer:TGR];
    
    //Swipe Up Gesture
    UISwipeGestureRecognizer *SGRup = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    SGRup.cancelsTouchesInView = NO;
    SGRup.direction = UISwipeGestureRecognizerDirectionUp;
    [self.tableView addGestureRecognizer:SGRup];
    
    //Down
    UISwipeGestureRecognizer *SGRdown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    SGRdown.cancelsTouchesInView = NO;
    SGRdown.direction = UISwipeGestureRecognizerDirectionDown;
    [self.tableView addGestureRecognizer:SGRdown];
    
    //Left
    UISwipeGestureRecognizer *SGRleft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    SGRleft.cancelsTouchesInView = NO;
    SGRleft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.tableView addGestureRecognizer:SGRleft];
    
    //Right
    UISwipeGestureRecognizer *SGRright = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    SGRright.cancelsTouchesInView = NO;
    SGRright.direction = UISwipeGestureRecognizerDirectionRight;
    [self.tableView addGestureRecognizer:SGRright];
    
}

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    [header.textLabel setFont:[UIFont boldSystemFontOfSize:[header.textLabel.font pointSize]]];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return _NoOfFamily;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
    
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
        if ([cell.relationshipTxt.text isEqual: @""]) {
            
            //Empty Alert
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Missing Fields" message:@"Please Fill In All Fields!" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
            
            [alert addAction: okButton];
            [self presentViewController:alert animated:YES completion:nil];
            
            //Stop Loop
            break;
            
        }
        else{
            
            //Check if GMI Field is Empty
            if ([cell.gmiTxt.text isEqual:@""]) {
                
                FamilyMember *member = [[FamilyMember alloc] initWithRelationShip:cell.relationshipTxt.text andGMI: 0];
                [_Family addObject:member];
                
            }
            else{
                
                FamilyMember *member = [[FamilyMember alloc] initWithRelationShip:cell.relationshipTxt.text andGMI:[cell.gmiTxt.text doubleValue]];
                [_Family addObject:member];
                
            }
        }
        
    }
    
    for (FamilyMember* member in _Family) {
        
        NSLog(@"%@ Relationship: ", member.Relationship);
        NSLog(@"%ld GMI: ", (long)member.GMI);
        
    }
    
}

- (IBAction)mainBtn:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"MainMenu"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
