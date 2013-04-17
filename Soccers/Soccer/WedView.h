//
//  WedView.h
//  Soccer
//
//  Created by TOM on 4/16/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WedView : UIViewController <UIWebViewDelegate>
@property(strong,nonatomic) UIWebView* webView;
@property(strong,nonatomic) NSString* link;
@end
