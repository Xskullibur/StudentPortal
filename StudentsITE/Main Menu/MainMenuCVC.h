//
//  MainMenuCVC.h
//  StudentsITE
//
//  Created by Alson on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuCVC : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *CollectionView;

- (IBAction)LogoutBtn:(id)sender;

@end
