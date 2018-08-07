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

    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"AllBackground"]];
    CGFloat Y1S1GPA = 0;
    CGFloat Y1S2GPA = 0;
    CGFloat Y2S1GPA = 0;
    CGFloat Y2S2GPA = 0;
    
    if(_ElectCU == 0 && _LS1 == 0 ){
        Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU)/(_MainCU * 2);
    }
    else if (_Elective == 0 && _LS1 == 0){
        Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU)/(_MainCU * 2 + _ElectCU);
    }
    else if (_Elective == 0){
        Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU + _LS1 * _LSCU)/(_MainCU * 2 + _LSCU);
    }
    else if (_LS1 == 0) {
        Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU + _Elective * _ElectCU)/(_MainCU * 2 + _ElectCU);
    }
    else{
     Y1S1GPA = (_CMOS * _MainCU + _NT * _MainCU + _LS1 * _LSCU + _Elective * _ElectCU)/(_MainCU * 2 + _LSCU + _ElectCU);
    }
    
    
    
    
    if (_LS2 == 0) {
        Y1S2GPA = (_ADE * _MainCU + _SYSAD * _MainCU)/(_MainCU * 2);
    }
    else{
        Y1S2GPA = (_ADE * _MainCU + _SYSAD * _MainCU + _LS2 * _LSCU)/(_MainCU *2 + _LSCU);
    }
    
   
    if (_LSE==0) {
          Y2S1GPA = (_MAE * _MainCU + _IAD * _MainCU)/(_MainCU * 2);
    }
    else{
   Y2S1GPA = (_MAE * _MainCU + _IAD * _MainCU+ _LSE * _LSCU)/(_MainCU * 2+ _LSCU);
    }
   
    Y2S2GPA = (_IA * _IACU + _MSD * _MainCU)/(_MainCU + _IACU);
    
    
    _lbY1S1GPA.text=[NSString stringWithFormat:@"%.3f",Y1S1GPA];
     _lbY1S2GPA.text=[NSString stringWithFormat:@"%.3f",Y1S2GPA];
     _lbY2S1GPA.text = [NSString stringWithFormat:@"%.3f",Y2S1GPA];
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
    if (Y1S1GPA != 0 && Y1S2GPA != 0 && Y2S1GPA != 0 && Y2S2GPA != 0) {
        CLGPA =(Y1S1GPA + Y1S2GPA + Y2S1GPA + Y2S2GPA)/4;
    }
    
    if (isnan(CLGPA)) {
        _lbCLGPA.text = @"-";
        
    }
    else{
       _lbCLGPA.text = [NSString stringWithFormat:@"%.3f",CLGPA];
    }
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

-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    [header.textLabel setFont:[UIFont boldSystemFontOfSize:[header.textLabel.font pointSize]]];
    
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
