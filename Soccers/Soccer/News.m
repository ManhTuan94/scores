//
//  News.m
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "News.h"
#import "WedView.h"
@interface News ()
{
    MPMoviePlayerController* videoPlayer;
}
@end

@implementation News
@synthesize bongda,bongdaso;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"News";
    UITapGestureRecognizer* tapA = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapbongda)];
    UITapGestureRecognizer* tapB = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapbongdaso)];
    bongdaso.userInteractionEnabled = YES;
    bongda.userInteractionEnabled = YES;
    [bongda addGestureRecognizer:tapA];
    [bongdaso addGestureRecognizer:tapB];
    
    UIImage *navBackgroundImage = [UIImage imageNamed:@"navbar.jpg"];
    [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];
    UIImage *backButtonImage = [[UIImage imageNamed:@"button_back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}
-(void) tapbongda{
    WedView* wed = [WedView new];
    wed.link = @"http://www.bongda.com.vn/";
    [self.navigationController pushViewController:wed animated:YES];
    
    
}
-(void) tapbongdaso{
    WedView* wed = [WedView new];
    wed.link = @"http://bongdaso.com/";
    [self.navigationController pushViewController:wed animated:YES];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)clipscores:(id)sender {
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"kaka" ofType:@"mov"];
    NSURL* url = [NSURL fileURLWithPath:path];
    videoPlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [self.view addSubview: videoPlayer.view];
    [videoPlayer setFullscreen:YES];
    videoPlayer.scalingMode = MPMovieScalingModeAspectFit;
    [videoPlayer play];
    

}

@end
