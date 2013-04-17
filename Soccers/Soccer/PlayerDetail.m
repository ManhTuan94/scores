//
//  PlayerDetail.m
//  Soccer
//
//  Created by Tuan EM on 4/16/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "PlayerDetail.h"

@interface PlayerDetail ()

@end

@implementation PlayerDetail
@synthesize name,age,photo;

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
