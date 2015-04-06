//
//  CNPriceTableViewCell.h
//  CNGiatieu
//
//  Created by MinhHT on 3/28/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CNPriceTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblPlaceName;
@property (weak, nonatomic) IBOutlet UIScrollView *scrViewForLabel;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblValueChange;

@end
