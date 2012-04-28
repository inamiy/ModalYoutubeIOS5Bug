//
//  MYWebViewController.h
//  ModalYoutubeIOS5Bug
//
//  Created by Yasuhiro Inami on 12/04/28.
//  Copyright (c) 2012年 Yasuhiro Inami. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYWebViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)handleClose:(id)sender;

@end
