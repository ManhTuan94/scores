//
//  AppDelegate.h
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "News.h"    
#import "Club.h"
#import "iBet.h"
#import "Fixtures.h"


@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong,nonatomic) UITabBarController* tabbarController;
@property (strong,nonatomic) UINavigationController* players;
@property (strong,nonatomic) UINavigationController* news;
@property (strong,nonatomic) UINavigationController* clubs;
@property (strong,nonatomic) UINavigationController* iBets;
@property (strong,nonatomic) UINavigationController* fixtures;

@end
