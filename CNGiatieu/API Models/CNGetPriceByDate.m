//
//  CNGetPriceByDate.m
//  CNGiatieu
//
//  Created by MinhHT on 3/28/15.
//  Copyright (c) 2015 CenaSam. All rights reserved.
//

#import "CNGetPriceByDate.h"

@implementation CNGetPriceByDate


+(void) requestPricebyDate:(NSDate*)date withDelegate:(NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getprice.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
    
}

+(void) requestTechicalByType:(NSInteger)type withDelegate: (NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getTech1.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
}

+(void) requestAgriculturalMaterial:(NSInteger)type withDelegate: (NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getTech1.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
}

+(void) requestNewswithDelegate:(NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getNews.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
}

+(void) requestModuleswithDelegate:(NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getModules.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
}

+(void) requestGetTopicswithDelegate:(NSObject*)delegate {
    NSString *urlString = [NSString stringWithFormat:@"getTopics.php"];
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url]  ;
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection start];
}
@end
