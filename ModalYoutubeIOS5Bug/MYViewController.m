//
//  MYViewController.m
//  ModalYoutubeIOS5Bug
//
//  Created by Yasuhiro Inami on 12/04/28.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "MYViewController.h"
#import "MYWebViewController.h"

@interface MYViewController ()

@end

@implementation MYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)_presentModalWithURL:(NSURL*)url
{
    MYWebViewController* webVC = [[MYWebViewController alloc] init];
    [self presentModalViewController:webVC animated:YES];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [webVC.webView loadRequest:request];
}

#pragma mark IBActions

- (IBAction)handleModal:(id)sender 
{
    [self _presentModalWithURL:[NSURL URLWithString:@"http://m.youtube.com/watch?v=UF8uR6Z6KLc"]];
}

- (IBAction)handleModal2:(id)sender 
{
    [self _presentModalWithURL:[NSURL URLWithString:@"http://matome.naver.jp/odai/2132341590606443601"]];
}

@end
