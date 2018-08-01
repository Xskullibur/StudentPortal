//
//  FamilyMemberCell.m
//  StudentsITE
//
//  Created by Alson on 23/7/18.
//  Copyright © 2018 Student2. All rights reserved.
//

#import "FamilyMemberCell.h"

@implementation FamilyMemberCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_gmiTxt resignFirstResponder];
    [_nameTxt resignFirstResponder];
    [_relationshipTxt resignFirstResponder];
    [[self window] endEditing: YES];
    
}

@end
