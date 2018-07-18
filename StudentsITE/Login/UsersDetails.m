//
//  UsersDetails.m
//  StudentsITE
//
//  Created by Student2 on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "UsersDetails.h"

@implementation UsersDetails

- (id)init
{
    _UserInfo = [[NSMutableArray alloc] init];
    
    NSMutableArray* User1 = [NSMutableArray arrayWithObjects:@"T0029863D", @"123", @"Alson", @"TRUE", nil];
    NSMutableArray* User2 = [NSMutableArray arrayWithObjects:@"T1234567A", @"pass", @"John", @"FALSE", nil];
    
    self = [super init];
    if (self) {
        
        [_UserInfo addObject:User1];
        [_UserInfo addObject:User2];
        
    }
    return self;
}

- (BOOL)LoginWithNRIC:(NSString *)NRIC andPassword:(NSString *)Password{
    
    for (NSMutableArray *User in _UserInfo) {
        if ([User containsObject:NRIC]) {
            
            NSLog(@"Correct NRIC");
            _UserIndex = [_UserInfo indexOfObject:User];
            
            if ([_UserInfo[_UserIndex][1] isEqualToString:Password]) {
                NSLog(@"Correct Password");
                return true;
            }
            else{
                NSLog(@"Invalid Password");
                return false;
            }
            
            break;
        }
        else{
            continue;
        }
    }
    
    NSLog(@"Invalid NRIC");
    return false;
    
//    NSMutableArray* NRICs = [NSMutableArray arrayWithObjects:@"T0029863D", @"T1234567D", nil];
//    NSMutableArray* Passwords = [NSMutableArray arrayWithObjects:@"password", @"123", nil];
//
//    if ([NRICs containsObject:NRIC]) {
//        if ([[Passwords objectAtIndex:[NRICs indexOfObject:NRIC]] isEqualToString:Password]) {
//            NSLog(@"TRUE");
//            return true;
//        }
//        else{
//            NSLog(@"False");
//            return false;
//        }
//    }
//    else{
//      return false;
//    }
}

@end