//
//  Fixtures.m
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Fixtures.h"
#import "WedView.h"
@interface Fixtures ()

@end

@implementation Fixtures

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
    self.title =@"Fixtures";
    WedView* wed = [WedView new];
    wed.link = @"http://bongdaso.com/";
    [self.view addSubview:wed.view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
