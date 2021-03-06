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
    else if ([Grade isEqualToString:@"E"]){
        return 1;
    }
    else{
        return 0;
    }
}

-(BOOL) gradeCheck: (NSString *) Grade {
#define ALPHA_ARRAY [NSArray arrayWithObjects: @"A", @"B", @"C",@"D",@"E",@"F",@"",nil]
    BOOL match = NO;
    NSUInteger f;
    for (f = 0; f < [ALPHA_ARRAY count]; f++) {
        NSString * stringFromArray = [ALPHA_ARRAY objectAtIndex:f];
        if ([[Grade uppercaseString]isEqualToString:stringFromArray]) {
            match = YES;
            break;
        }
    }
    if ( match ) {
        // do found
        return true;
        
    } else {
        // do not found
       
        return false;
        
    }
}

-(void)viewDidDisappear:(BOOL)animated{
    self.navigationItem.rightBarButtonItem.enabled=false;
    self.navigationItem.rightBarButtonItem.enabled=true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
     [_CellElect setAccessibilityElementsHidden:true];
   self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"AllBackground"]];
    
    [self setupKeyboardDismissTaps];
    
    _lblPF1.text = @"Fail";
    _lblPF2.text = @"Fail";
    _lblPF3.text = @"Fail";
    _lblPF4.text = @"Fail";
    // Uncomment the following line to preserve selection between presentations.
    //self.clearsSelectionOnViewWillAppear = YES;
    
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
    if (section==3) {
        return 3;
    }
    else if (section == 0){
        return 5;
    }
    else
        return 4;
}

-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    [header.textLabel setFont:[UIFont boldSystemFontOfSize:[header.textLabel.font pointSize]]];
    
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
    if (_gdSW1.isOn) {
        vc.SW1=1;
    }
    else{
        vc.SW1=0;
    }
    vc.LS1=[self GradeToScale:[_gdLS1.text uppercaseString]];
    
    vc.ADE=[self GradeToScale:[_gdADE.text uppercaseString]];
    vc.SYSAD=[self GradeToScale:[_gdSYSAD.text uppercaseString]];
    if (_gdSW2.isOn) {
        vc.SW2=1;
    }
    else{
        vc.SW2=0;
    }
    vc.LS2=[self GradeToScale:[_gdLS2.text uppercaseString]];
    
    vc.MAE = [self GradeToScale:[_gdMAE.text uppercaseString]];
    vc.IAD = [self GradeToScale:[_gdIAD.text uppercaseString]];
    if (_gdSW3.isOn) {
        vc.SW3=1;
    }
    else{
        vc.SW3=0;
    }
    
    vc.LSE = [self GradeToScale:[_gdLSE.text uppercaseString]];
    
    vc.IA = [self GradeToScale:[_gdIA.text uppercaseString]];
    vc.MSD = [self GradeToScale:[_gdMSD.text uppercaseString]];
    if (_gdSW4.isOn) {
        vc.SW4=1;
    }
    else{
        vc.SW4=0;
    }
    if(_gdElect.isOn){
        vc.Elective = 4;
    }
    else{
        vc.Elective = 0;
    }
    
    vc.MainCU = 7.0;
    if (_ElectYN.isOn) {
        vc.ElectCU = 3.0;
    }
    else{
    vc.ElectCU = 0;
    }
    vc.LSCU = 2.0;
    vc.SWCU = 1.0;
    vc.IACU = 4.0;

    
    
    
   
}


- (IBAction)btnCalc:(id)sender {
    if( [self gradeCheck:_gdCMOS.text] && [self gradeCheck:_gdNT.text] &&[self gradeCheck:_gdLS1.text] && [self gradeCheck:_gdADE.text] && [self gradeCheck:_gdSYSAD.text] && [self gradeCheck:_gdLS2.text] && [self gradeCheck:_gdMAE.text] && [self gradeCheck:_gdIAD.text] && [self gradeCheck:_gdLSE.text] && [self gradeCheck:_gdMSD.text] && [self gradeCheck:_gdIA.text]){
        [self performSegueWithIdentifier:@"ShowResult" sender:sender];
    }
    else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Wrong Grade" message:@"Wrong Grade Entered" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction: okButton];
        [self presentViewController:alert animated:YES completion:nil];
    }
   
}

- (IBAction)btnMain:(id)sender {
    UIStoryboard *MainStoryboard = [UIStoryboard storyboardWithName:@"MainMenu" bundle:nil];
    
    UIViewController *MainMenuCVC = [MainStoryboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    
    [[UIApplication sharedApplication].keyWindow setRootViewController:MainMenuCVC];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_gdCMOS resignFirstResponder];
    [_gdNT resignFirstResponder];
    [_gdSW1 resignFirstResponder];
    [_gdLS1 resignFirstResponder];
    
    [_gdADE resignFirstResponder];
    [_gdSYSAD resignFirstResponder];
    [_gdSW2 resignFirstResponder];
    [_gdLS2 resignFirstResponder];
    
    [_gdMAE resignFirstResponder];
    [_gdIAD resignFirstResponder];
    [_gdSW3 resignFirstResponder];
    [_gdLSE resignFirstResponder];
    
    [_gdMSD resignFirstResponder];
    [_gdIA resignFirstResponder];
    [_gdSW4 resignFirstResponder];
    [[self.view window] endEditing: YES];
    
}



- (IBAction)PF1:(id)sender {
    if (_gdSW1.isOn) {
         _lblPF1.text =@"Pass";
    }
    else{
        _lblPF1.text = @"Fail";
    }
   
}

- (IBAction)PF2:(id)sender {
    if (_gdSW2.isOn) {
        _lblPF2.text =@"Pass";
    }
    else{
        _lblPF2.text = @"Fail";
    }
    
}



- (IBAction)BtnElectYN:(id)sender {
    
    if (_ElectYN.isOn) {
        [_gdElect setOn:YES animated:YES];
        _lblPF5.text = @"Pass";
    }
    else{
        [_gdElect setOn:NO animated:YES];
        _lblPF5.text = @"";
    }
    
}

- (IBAction)PF3:(id)sender {
    if (_gdSW3.isOn) {
        _lblPF3.text =@"Pass";
    }
    else{
        _lblPF3.text = @"Fail";
    }
    
}

- (IBAction)PF4:(id)sender {
    if (_gdSW4.isOn) {
        _lblPF4.text =@"Pass";
    }
    else{
        _lblPF4.text = @"Fail";
    }
    
}

- (IBAction)PF5:(id)sender {
    
    if (_ElectYN.isOn) {
        if (_gdElect.isOn) {
            _lblPF5.text =@"Pass";
        }
        else{
            _lblPF5.text = @"Fail";
        }
    }
    else{
        [_gdElect setOn:NO animated:YES];
        _lblPF5.text = @"";
    }
    
}


@end
