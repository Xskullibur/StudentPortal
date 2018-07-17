//
//  Alert.h
//  StudentsITE
//
//  Created by Alson on 17/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Alert : NSObject

-(void)showAlertWithTitle:(NSString*)Title andMessage:(NSString*)Message andActionTitle:(NSString*)ActionTitle;

@end
