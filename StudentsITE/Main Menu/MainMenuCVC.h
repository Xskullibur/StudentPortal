//
//  MainMenuCVC.h
//  StudentsITE
//
//  Created by Alson on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuCVC : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic) long userIndex;
- (IBAction)LogoutBtn:(id)sender;

@end
