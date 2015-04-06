//
//  CNThirdViewController.m
//  CNGiatieu
//
//  Created by MinhHT on 3/28/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import "CNThirdViewController.h"

@interface CNThirdViewController () {
    NSArray *arrayLinks;
}

@end

@implementation CNThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Array of webview URL
    arrayLinks = @[@"http://www.giatieu.com/trong-muong-den-lam-tru-song-cho-cay-ho-tieu/6760/",
                @"asd",
                @"adsd",
                @"http://www.giatieu.com/nhung-hieu-biet-co-ban-ve-phan-huu-co/6715/",
                @"http://www.giatieu.com/bon-phan-cho-ho-tieu-kinh-doanh/6712/",
                @"http://www.giatieu.com/bo-nong-nghiep-ptnt-thanh-lap-cong-tac-ve-phong-chong-benh-tren-cay-ho-tieu/6671/",
                @"http://www.giatieu.com/kon-tum-loi-giai-nao-cho-hien-tuong-tieu-chet-hang-loat/6646/"];
    
    //Config buttons
    self.mbtnChamsoc.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.mbtnChamsoc.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.mbtnChamsoc setTitle:@"Kỹ thuật\n chăm sóc" forState:UIControlStateNormal];
    self.mbtnChamsoc.layer.borderWidth = 2.0f;
    self.mbtnChamsoc.layer.borderColor = [UIColor colorWithRed:0.927 green:0.887 blue:0.435 alpha:1.000].CGColor;
    self.mbtnChamsoc.layer.cornerRadius = 10.0f;
    self.mbtnChamsoc.clipsToBounds = YES;
  
    
    self.mbtnBonphan.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.mbtnBonphan.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.mbtnBonphan setTitle:@"Kỹ thuật\n bón phân" forState:UIControlStateNormal];
    self.mbtnBonphan.layer.borderWidth = 2.0f;
    self.mbtnBonphan.layer.borderColor = [UIColor colorWithRed:0.927 green:0.887 blue:0.435 alpha:1.000].CGColor;
    
    self.mbtnPhongbenh.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.mbtnPhongbenh.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.mbtnPhongbenh setTitle:@"Kỹ thuật\n phòng bệnh" forState:UIControlStateNormal];
    self.mbtnPhongbenh.layer.borderWidth = 2.0f;
    self.mbtnPhongbenh.layer.borderColor = [UIColor colorWithRed:0.927 green:0.887 blue:0.435 alpha:1.000].CGColor;
    
    self.mbtnPhongbenh.layer.shadowColor = [UIColor yellowColor].CGColor;
    self.mbtnPhongbenh.layer.shadowOpacity = 0.8;
    self.mbtnPhongbenh.layer.shadowRadius = 3.0f;
    self.mbtnPhongbenh.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
