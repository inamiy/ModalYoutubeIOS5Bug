//
//  MYWebViewController.m
//  ModalYoutubeIOS5Bug
//
//  Created by Yasuhiro Inami on 12/04/28.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import "MYWebViewController.h"

@interface MYWebViewController ()

@end

@implementation MYWebViewController
@synthesize webView;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleClose:(id)sender 
{
    [self.presentingViewController dismissModalViewControllerAnimated:YES];
}

@end
