//
//  FamilyMember.h
//  StudentsITE
//
//  Created by Student2 on 18/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FamilyMember : NSObject

@property NSString* Name;
@property NSString* Relationship;
@property long GMI;

-(instancetype)initWithName: (NSString*)name andRelationship: (NSString*)relationship andGMI: (long)gmi;

@end
