//
//  FamilyMember.m
//  StudentsITE
//
//  Created by Student2 on 18/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "FamilyMember.h"

@implementation FamilyMember

-(instancetype)initWithName:(NSString *)name andRelationship:(NSString *)relationship andGMI:(long)gmi{
    
    self = [super init];
    if (self) {
        _Name = name;
        _Relationship = relationship;
        _GMI = gmi;
    }
    return self;
    
}

@end
