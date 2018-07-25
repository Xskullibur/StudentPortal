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
    
    NSMutableArray* User1 = [NSMutableArray arrayWithObjects:@"T0029863D", @"123", @"Alson", @"Blk 987 Whampoa Road", @"#19-489", @"S13489", @"97456123", @"alson_sim@connect.edu.sg", nil];
    NSMutableArray* User2 = [NSMutableArray arrayWithObjects:@"mae", @"123", @"MR MAE", @"ABC Towers 123", @"#05-333", @"S315794", @"96548721", @"mae@connect.edu.sg", nil];
    NSMutableArray* User3 = [NSMutableArray arrayWithObjects:@"T0038205H", @"1234", @"Keegan", @"5 Ang Mo Kio", @"#04-785", @"S974512", @"84612797", @"keegan_yip@connect.edu.sg", nil];
    
    self = [super init];
    if (self) {
        
        [_UserInfo addObject:User1];
        [_UserInfo addObject:User2];
        [_UserInfo addObject:User3];
        
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
