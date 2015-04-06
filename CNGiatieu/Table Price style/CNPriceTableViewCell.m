//
//  CNPriceTableViewCell.m
//  CNGiatieu
//
//  Created by MinhHT on 3/28/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import "CNPriceTableViewCell.h"

@implementation CNPriceTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    self.layer.borderColor = [UIColor blackColor].CGColor;
    
    self.clipsToBounds = YES;
    self.layer.borderWidth = 2;
}
@end
