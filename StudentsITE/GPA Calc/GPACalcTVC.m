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
    
    GPAResultTVC *vc = [segue destinationViewController];
    vc.CMOS=[self GradeToScale:[_gdCMOS.text uppercaseString]];
    vc.NT=[self GradeToScale:[_gdNT.text uppercaseString]];
    vc.SW1=[self GradeToScale:[_gdSW1.text uppercaseString]];
    vc.PPD1=[self GradeToScale:[_gdPPD1.text uppercaseString]];
    
    vc.ADE=[self GradeToScale:[_gdADE.text uppercaseString]];
    vc.SYSAD=[self GradeToScale:[_gdADE.text uppercaseString]];
    vc.SW2=[self GradeToScale:[_gdADE.text uppercaseString]];
    vc.PPD2=[self GradeToScale:[_gdADE.text uppercaseString]];
    
    vc.MAE = [self GradeToScale:[_gdMAE.text uppercaseString]];
    vc.IAD = [self GradeToScale:[_gdIAD.text uppercaseString]];
    vc.SW3 = [self GradeToScale:[_gdSW3.text uppercaseString]];
    vc.PM = [self GradeToScale:[_gdPM.text uppercaseString]];
    
    vc.IA = [self GradeToScale:[_gdIA.text uppercaseString]];
    vc.MSD = [self GradeToScale:[_gdMSD.text uppercaseString]];
    vc.SW4 = [self GradeToScale:[_gdSW4.text uppercaseString]];
    
    vc.MainCU = 7;
    vc.ElectCU = 3;
    vc.LSCU = 2;
    vc.SWCU = 1;
    vc.IACU = 4;

    
    
    
   
}


- (IBAction)btnCalc:(id)sender {
   
    
}

- (IBAction)btnMain:(id)sender {
    UIStoryboard *MainStoryboard = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    
    UIViewController *MainMenuCVC = [MainStoryboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    
    [[UIApplication sharedApplication].keyWindow setRootViewController:MainMenuCVC];
}


@end
