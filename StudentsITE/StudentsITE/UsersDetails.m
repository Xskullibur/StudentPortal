//
//  UsersDetails.m
//  StudentsITE
//
//  Created by Student2 on 16/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "UsersDetails.h"

@implementation UsersDetails

-(id)init{
    NSMutableArray *user1 = [[NSMutableArray alloc]initWithObjects:@"T0038205H", @"Keegan", @"123", @"TRUE", nil];
    NSMutableArray *user2 = [[NSMutableArray alloc]initWithObjects:@"T0029863D", @"Alson", @"abc", @"FALSE", nil];
    NSMutableArray *user3 = [[NSMutableArray alloc]initWithObjects:@"T0012345A", @"John", @"pass", @"FALSE", nil];
    
    [_userInfo addObject:user1];
    [_userInfo addObject:user2];
    [_userInfo addObject:user3];
    
    self = [super init];
    
    return self;
}

@end
