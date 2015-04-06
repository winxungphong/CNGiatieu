//
//  CNFirstViewController.m
//  CNGiatieu
//
//  Created by MinhHT on 3/26/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import "CNFirstViewController.h"
#import "CNBackgroundLayer.h"
@interface CNFirstViewController () <UIWebViewDelegate>

@end

@implementation CNFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Custom tabbar
    self.tabBarController.tabBar.frame = CGRectMake(0, self.view.frame.size.height - 50, 320, 60);
    UITabBarItem* item = (UITabBarItem*)[self.tabBarController.tabBar.items objectAtIndex:0];
    
//    UIColor *color = [UIColor colorWithRed:0.217 green:0.171 blue:0.500 alpha:1.000];
//    
//    
//    CGRect frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width, 48);
//    UIView *v = [[UIView alloc] initWithFrame:frame];
//    [v setBackgroundColor:color];
//    [v setAlpha:0.5];
//    [self.tabBarController.tabBar addSubview:v];
    NSURL *url = [NSURL URLWithString:@"http://www.giatieu.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
    

    
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


#pragma mark - webview delegate
- (void)webViewDidStartLoad:(UIWebView *)webView {
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(self.webView.center.x, self.webView.center.y, 50, 50)];
    [self.webView addSubview:indicatorView];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}



+(UIImage*)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    CGContextSetFillColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
