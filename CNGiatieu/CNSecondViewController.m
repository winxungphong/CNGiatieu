//
//  CNSecondViewController.m
//  CNGiatieu
//
//  Created by MinhHT on 3/26/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import "CNSecondViewController.h"
#import "CNPriceTableViewCell.h"
#import "CNBackgroundLayer.h"
#import "CNCustomHeader.h"
#import "CNGiatieuModel.h"

@interface CNSecondViewController () <UIPageViewControllerDataSource>

@property (weak, nonatomic) IBOutlet UITableView *mtblPrice;
@property (strong, nonatomic) NSMutableArray *arrGiatieu;
@end

@implementation CNSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.mtblPrice.contentSize = CGSizeMake(640, 600);
    self.mtblPrice.scrollEnabled = YES;
    self.mtblPrice.dataSource = self;
    self.mtblPrice.delegate = self;
  
    //ADd pageview
    
    self.mtblPrice.backgroundColor = [UIColor clearColor];
    self.mtblPrice.separatorInset = UIEdgeInsetsMake(0, 3, 0, 11);
    
    //Hard code data
    CNGiatieuModel *gia1 = [[CNGiatieuModel alloc] init];
    gia1.areaName = @"Chu Se (Gia Lai) ";
    gia1.price = 175.000;
    gia1.valueChanged = 1.0;
    
    CNGiatieuModel *gia2 = [[CNGiatieuModel alloc] init];
    gia2.areaName = @"Chau Duc (Ba Ria) ";
    gia2.price = 180.000;
    gia2.valueChanged = 1.0;
    
    CNGiatieuModel *gia3 = [[CNGiatieuModel alloc] init];
    gia3.areaName = @"Dak Lak (Dak Nong) ";
    gia3.price = 175.000;
    gia3.valueChanged = 1.0;
    
    CNGiatieuModel *gia4 = [[CNGiatieuModel alloc] init];
    gia4.areaName = @"Binh Phuoc ";
    gia4.price = 177.000;
    gia4.valueChanged = 1.0;
    
    self.arrGiatieu = [[NSMutableArray alloc] initWithObjects:gia1,gia2,gia3,gia4, nil];
    
    //Date
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [[NSCalendar alloc] init];
    
    
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    CAGradientLayer *bgLayer = [CNBackgroundLayer blueGradient];
    bgLayer.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height - self.tabBarController.tabBar.frame.size.height);
    [self.view.layer insertSublayer:bgLayer atIndex:0];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UITableview datasource
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30.0f;
}
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    CNCustomHeader * header = [[CNCustomHeader alloc] init];
   
//    header.titleLabel.text = [self tableView: tableView titleForHeaderInSection:section];
    // START NEW
    if (section == 1) {
        header.lightColor = [UIColor colorWithRed:147.0/255.0 green:105.0/255.0 blue:216.0/255.0 alpha:1.0];
        header.darkColor = [UIColor colorWithRed:72.0/255.0 green:22.0/255.0 blue:137.0/255.0 alpha:1.0];
    }
    // END NEW
    return header;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *titleLabelHeader;
    if (section == 0) {
        titleLabelHeader =  @"Sàn Ấn Độ";
    } else if (section == 1) {
        titleLabelHeader = @"San Malaysia";
    } else if (section == 2) {
        titleLabelHeader = @"San Brazil";
    }
    return titleLabelHeader;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"cellIdentifier";
    
    
    CNPriceTableViewCell *cell;
    cell = (CNPriceTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"CNPriceTableViewCell" owner:nil options:nil];
        cell = [nibs objectAtIndex:0];
    } else {
        
        
    }
    CNGiatieuModel *giatieuModel = [self.arrGiatieu objectAtIndex:indexPath.row];
//    if (indexPath.row < self.arrGiatieu.count) {
    
   
        cell.lblPlaceName.text = giatieuModel.areaName;
        cell.lblPrice.text     = [NSString stringWithFormat:@"%d",giatieuModel.price];
        cell.lblValueChange.text = [NSString stringWithFormat:@"%d",giatieuModel.valueChanged];
//    } else {
//        cell.lblPlaceName.text = @"";
//        cell.lblPrice.text = @"";
//        cell.lblValueChange.text = @"";
//    }
    [cell.lblPlaceName sizeToFit];
    //animation if needed
    if (cell.lblPlaceName.frame.size.width > 100) {
        cell.scrViewForLabel.contentSize = CGSizeMake(cell.lblPlaceName.frame.size.width, cell.scrViewForLabel.frame.size.height);
        cell.scrViewForLabel.scrollEnabled = YES;
    
        [self animateLabel:cell.lblPlaceName inFrame:CGRectMake(cell.lblPlaceName.frame.origin.x, cell.lblPlaceName.frame.origin.y, 100, cell.lblPlaceName.frame.size.height)];
        NSLog(@"should animate heree \n");
    }
    
//    cell.lblPrice.text     = @"173.000";
//    cell.lblValueChange.text = @"0";
    cell.userInteractionEnabled = NO;
    if (indexPath.row % 2) {
        cell.backgroundColor = [UIColor colorWithWhite:0.688 alpha:1.000];
    } else {
        cell.backgroundColor = [UIColor whiteColor];
    }
    
    return cell;
    
}


- (void)animateLabel:(UILabel*)label inFrame:(CGRect)frame {
    [label setFrame:CGRectMake(-300, label.frame.origin.y, label.frame.size.width
                               , label.frame.size.height)];
    [UIView setAnimationDuration:3.0];
    [UIView commitAnimations];
}
#pragma mark - UIPageview datasource

@end
