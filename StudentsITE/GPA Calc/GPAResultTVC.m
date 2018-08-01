//
//  GPAResultTVC.m
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "GPAResultTVC.h"
#import "GPACalcTVC.h"

@interface GPAResultTVC ()

@end

@implementation GPAResultTVC

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    CGFloat Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU +  _SW1 * _SWCU + _PPD1 * _LSCU)/(_MainCU * 2 + _LSCU + _SWCU);
    _lbY1S1GPA.text=[NSString stringWithFormat:@"%.3f",Y1S1GPA];
    
    CGFloat Y1S2GPA = (_ADE * _MainCU + _SYSAD * _MainCU + _SW2 * _SWCU + _PPD2 * _LSCU)/(_MainCU *2 + _LSCU + _SWCU);
    _lbY1S2GPA.text=[NSString stringWithFormat:@"%.3f",Y1S2GPA];
    
    CGFloat Y2S1GPA = (_MAE * _MainCU + _IAD * _MainCU + _SW3 * _SWCU + _PM * _LSCU)/(_MainCU * 2 + _SWCU + _LSCU);
    _lbY2S1GPA.text = [NSString stringWithFormat:@"%.3f",Y2S1GPA];
    
    CGFloat Y2S2GPA = (_IA * _IACU + _MSD * _MainCU + _SW4 * _SWCU)/(_MainCU + _IACU + _SWCU);
    _lbY2S2GPA.text=[NSString stringWithFormat:@"%.3f",Y2S2GPA];
    
    CGFloat CLGPA=0;
    NSInteger count = 0;
    if (Y1S1GPA==0||Y1S2GPA==0||Y2S1GPA==0||Y2S2GPA==0) {
        
        if (Y1S1GPA != 0) {
            count += 1;
        }
        
        if (Y1S2GPA != 0) {
            count += 1;
        }
        
        if (Y2S1GPA != 0) {
            count += 1;
        }
        
        if (Y2S2GPA != 0) {
            count += 1;
        }
        
        CLGPA = (Y1S1GPA + Y1S2GPA + Y2S1GPA + Y2S2GPA)/count;
    }
    _lbCLGPA.text = [NSString stringWithFormat:@"%.3f",CLGPA];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 5;
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

@end
