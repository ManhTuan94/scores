//
//  WedView.m
//  Soccer
//
//  Created by TOM on 4/16/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "WedView.h"

@interface WedView ()

@end

@implementation WedView
@synthesize webView,link;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO]; }
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{ [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.webView.scalesPageToFit = YES;
    [self.view addSubview:webView];
    NSURL *url = [NSURL URLWithString:link];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
