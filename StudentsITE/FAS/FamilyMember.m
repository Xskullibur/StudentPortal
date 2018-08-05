//
//  FamilyMember.m
//  StudentsITE
//
//  Created by Student2 on 18/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "FamilyMember.h"

@implementation FamilyMember

-(instancetype)initWithRelationShip:(NSString *)relationship andGMI:(NSInteger)gmi{
    
    self = [super init];
    if (self) {
        
        _Relationship = relationship;
        _GMI = gmi;
        
    }
    return self;
    
}

@end
