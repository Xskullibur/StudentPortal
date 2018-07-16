//
//  UsersDetails.h
//  StudentsITE
//
//  Created by Student2 on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UsersDetails : NSObject


@property(nonatomic) NSInteger UserIndex;
-(BOOL) LoginWithNRIC:(NSString*) NRIC andPassword:(NSString*)Password;

@property (nonatomic) NSMutableArray* UserInfo;

@end
