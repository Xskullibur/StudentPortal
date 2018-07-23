//
//  GPACalcTVC.m
//  StudentsITE
//
//  Created by Student2 on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "GPACalcTVC.h"
#import "GPAResultTVC.h"

@interface GPACalcTVC ()

@end

@implementation GPACalcTVC

-(NSInteger)GradeToScale:(NSString *)Grade{
    if ([Grade isEqualToString:@"A"]) {
        return 4;
    }
    else if ([Grade isEqualToString:@"B"]){
        return 3;
    }
    else if ([Grade isEqualToString:@"C"]){
        return 2;
    }
    else if ([Grade isEqualToString:@"D"]){
        return 1;
    }
    else{
        return 0;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
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
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 4;
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


#pragma mark - Navigation

 //In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     //Get the new view controller using [segue destinationViewController].
     //Pass the selected object to the new view controller.
    
    GPAResultTVC *vc = [[GPAResultTVC alloc] init];
    NSInteger CMOS=[self GradeToScale:_gdCMOS.text];
    NSInteger NT=[self GradeToScale:_gdNT.text];
    NSInteger BM1=[self GradeToScale:_gdBM1.text];
    NSInteger SW1=[self GradeToScale:_gdSW1.text];
    NSInteger PPD1=[self GradeToScale:_gdPPD1.text];
    
    NSInteger ADE=[self GradeToScale:_gdADE.text];
    NSInteger SYSAD=[self GradeToScale:_gdADE.text];
    NSInteger SW2=[self GradeToScale:_gdADE.text];
    NSInteger PPD2=[self GradeToScale:_gdADE.text];
    
    NSInteger MAE = [self GradeToScale:_gdMAE.text];
    NSInteger IAD = [self GradeToScale:_gdIAD.text];
    NSInteger SW3 = [self GradeToScale:_gdSW3.text];
    NSInteger PM = [self GradeToScale:_gdPM.text];
    
    NSInteger IA = [self GradeToScale:_gdIA.text];
    NSInteger MSD = [self GradeToScale:_gdMSD.text];
    NSInteger SW4 = [self GradeToScale:_gdSW4.text];
    
    NSInteger MainCU = 7;
    NSInteger ElectCU = 3;
    NSInteger LSCU = 2;
    NSInteger SWCU = 1;
    NSInteger IACU = 4;
    
    
    
    CGFloat Y1S1GPA = (CMOS * MainCU + NT * MainCU + BM1 * ElectCU + SW1 * SWCU + PPD1 * LSCU)/(MainCU * 2 +ElectCU + LSCU + SWCU);
    vc.lbY1S1GPA.text=[NSString stringWithFormat:@"%f",Y1S1GPA];
    
    CGFloat Y1S2GPA = (ADE * MainCU + SYSAD * MainCU + SW2 * SWCU + PPD2 * LSCU)/(MainCU *2 + LSCU +SWCU);
    vc.lbY1S2GPA.text=[NSString stringWithFormat:@"%f",Y1S2GPA];
    
    CGFloat Y2S1GPA = (MAE *MainCU + IAD * MainCU + SW3 * SWCU + PM * LSCU)/(MainCU * 2 + SWCU + MainCU);
    vc.lbY2S1GPA.text = [NSString stringWithFormat:@"%f",Y2S1GPA];
    
    CGFloat Y2S2GPA = (IA * IACU + MSD * MainCU + SW4 * SWCU)/(MainCU + IACU + SWCU);
    vc.lbY2S2GPA.text=[NSString stringWithFormat:@"%f",Y2S2GPA];
    
    CGFloat CLGPA = (Y1S1GPA + Y1S2GPA + Y2S1GPA + Y2S2GPA)/4;
    vc.lbCLGPA.text = [NSString stringWithFormat:@"%f",CLGPA];
}


- (IBAction)btnCalc:(id)sender {
   
    
}


@end
