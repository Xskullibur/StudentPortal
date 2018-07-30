//
//  MainMenuCVC.m
//  StudentsITE
//
//  Created by Alson on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "MainMenuCVC.h"
#import "CollectionViewCell.h"
#import "StudInfoTVC.h"

@interface MainMenuCVC (){
    NSArray *Buttons;
    NSArray *ButtonLabels;
}

@end

@implementation MainMenuCVC

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    NSLog(@"Main Menu User Index: %ld", (long)_userIndex);
    
    ButtonLabels = @[@"Campus Map", @"Exam Countdown", @"GPA Calculator", @"Lecturer Info", @"myConneXion", @"Student Info", @"FAS"];
    Buttons = @[@"campusMap", @"examCountdown", @"gpaCalculator", @"lecturer", @"myConneXion", @"studentInfo", @"fAS"];
    
    // Uncommen t the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    UINavigationController* nc = [segue destinationViewController];
    
    StudInfoTVC *tvc = (StudInfoTVC*)nc.topViewController;
    tvc.userIndex = _userIndex;
    
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return Buttons.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell  *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    //Cell Images
    cell.buttonImage.image = [UIImage imageNamed:Buttons[indexPath.row]];
    
    //Cell Labels
    cell.buttonLbl.text = ButtonLabels[indexPath.row ];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

//When Finger Tapped
-(void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:
            //Campus Map
        {
            
//            [self performSegueWithIdentifier:@"ShowMap" sender:self];
            
            UIStoryboard *MapStoryboard = [UIStoryboard storyboardWithName:@"CampusMap" bundle:nil];

            UIViewController *MapVC = [MapStoryboard instantiateViewControllerWithIdentifier:@"CampusMap"];

            [[UIApplication sharedApplication].keyWindow setRootViewController:MapVC];
        }
            break;
            
        case 1:
            //Exam CountDown
        {
            
            [self performSegueWithIdentifier:@"ShowExam" sender:self];
            
//            UIStoryboard *CountStoryboard = [UIStoryboard storyboardWithName:@"ExamCountdown" bundle:nil];
//
//            UIViewController *ExamVC = [CountStoryboard instantiateViewControllerWithIdentifier:@"ExamCountdown"];
//
//            [[UIApplication sharedApplication].keyWindow setRootViewController:ExamVC];
        }
           
            break;
            
        case 2:
            //GPA Calculator
        {
            
            [self performSegueWithIdentifier:@"ShowGPA" sender:self];
            
//            UIStoryboard *GPAStoryboard = [UIStoryboard storyboardWithName:@"GPACalc" bundle:nil];
//
//            UIViewController *GPACalcTVC = [GPAStoryboard instantiateViewControllerWithIdentifier:@"GPA"];
//
//            [[UIApplication sharedApplication].keyWindow setRootViewController:GPACalcTVC];
        }
            break;
            
        case 3:
            //Lect Info
        {
            
            [self performSegueWithIdentifier:@"ShowLect" sender:self];
            
//            UIStoryboard *LectStoryboard = [UIStoryboard storyboardWithName:@"Lect" bundle:nil];
//
//            UIViewController *LectTVC = [LectStoryboard instantiateViewControllerWithIdentifier:@"Lect"];
//
//            [[UIApplication sharedApplication].keyWindow setRootViewController:LectTVC];
        }
            break;
            
        case 4:
            //myConneXion
        {
            
            [self performSegueWithIdentifier:@"ShowConnect" sender:self];
            
//            UIStoryboard *WebStoryboard = [UIStoryboard storyboardWithName:@"MyConnection" bundle:nil];
//
//            UIViewController *ConnectVC = [WebStoryboard instantiateViewControllerWithIdentifier:@"Connect"];
//
//            [[UIApplication sharedApplication].keyWindow setRootViewController:ConnectVC];
        }
            break;
            
        case 5:
            //Student Info
        {
            
            [self performSegueWithIdentifier:@"ShowStudentInfo" sender:self];
            
        }
            break;
            
        case 6:
            //FAS
        {
            
            [self performSegueWithIdentifier:@"ShowFAS" sender:self];
            
//            UIStoryboard *FasStoryboard = [UIStoryboard storyboardWithName:@"FAS" bundle:nil];
//
//            UIViewController *FasTVC = [FasStoryboard instantiateViewControllerWithIdentifier:@"FAS"];
//
//            [[UIApplication sharedApplication].keyWindow setRootViewController:FasTVC];
        }
            break;
            
        default:
            break;
    }
    
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

- (IBAction)LogoutBtn:(id)sender {
    
    UIStoryboard *loginScreen = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    UIViewController *LoginVC = [loginScreen instantiateViewControllerWithIdentifier:@"Login"];
    LoginVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:LoginVC animated:YES completion:nil];
    
    //[[UIApplication sharedApplication].keyWindow setRootViewController:LoginVC];
}
@end
