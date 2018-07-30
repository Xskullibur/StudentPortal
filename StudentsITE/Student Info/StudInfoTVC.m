//
//  StudInfoTVC.m
//  StudentsITE
//
//  Created by Student2 on 24/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "StudInfoTVC.h"

@interface StudInfoTVC ()

@end

@implementation StudInfoTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _UserDetails = [[UsersDetails alloc] init];
    
    AD = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    _userIndex = AD.userIndex;
    
    NSLog(@"StudInfo User Index: %ld", _userIndex);
    
    _lbNRIC.text = _UserDetails.UserInfo[_userIndex][0];
    _lbName.text = _UserDetails.UserInfo[_userIndex][2];
    _lbAdd1.text = _UserDetails.UserInfo[_userIndex][3];
    _lbAdd2.text = _UserDetails.UserInfo[_userIndex][4];
    _lbAdd3.text = _UserDetails.UserInfo[_userIndex][5];
    _lbHp.text = _UserDetails.UserInfo[_userIndex][6];
    _lbEmail.text = _UserDetails.UserInfo[_userIndex][7];
    
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
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 1;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnMain:(id)sender {
    UIStoryboard *mainScreen = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    UICollectionViewController *mainVC = [mainScreen instantiateViewControllerWithIdentifier:@"MainMenu"];
    mainVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:mainVC animated:YES completion:nil];
}
@end
