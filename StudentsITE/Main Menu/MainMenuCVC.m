//
//  MainMenuCVC.m
//  StudentsITE
//
//  Created by Alson on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "MainMenuCVC.h"
#import "CollectionViewCell.h"

@interface MainMenuCVC (){
    NSArray *Buttons;
    NSArray *ButtonLabels;
}

@end

@implementation MainMenuCVC

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Value Passed");
    NSLog(@"%ld", (long)_userIndex);
    
    ButtonLabels = @[@"Campus Map", @"Exam Countdown", @"GPA Calculator", @"Lecturer Info", @"myConneXion", @"Student Info", @"Schedule"];
    Buttons = @[@"campusMap", @"examCountdown", @"gpaCalculator", @"lecturer", @"myConneXion", @"studentInfo", @"timetable"];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return Buttons.count;;
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
            break;
            
        case 1:
            //Exam CountDown
            break;
            
        case 2:
            //GPA Calculator
            break;
            
        case 3:
            //Exam CountDown
            break;
            
        case 4:
            //Lecturer Info
            break;
            
        case 5:
            //myConneXion
            break;
            
        case 6:
            //Schedule
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
