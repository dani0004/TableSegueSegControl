//
//  RegionalViewCell.m
//  CriticalInfrastructureFramework
//
//  Created by Wendy-Anne Daniel on 2013-12-22.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import "RegionalViewCell.h"

@implementation RegionalViewCell
@synthesize label1,label2,label3,label4,label5,label6,label7;
@synthesize label8,label9,label10,label11,label12,label13,label14;
@synthesize label15,label16,label17,label18;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
     
            }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
