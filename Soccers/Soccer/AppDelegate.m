//
//  AppDelegate.m
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.tabbarController = [[UITabBarController alloc]init];
    
    Player *playVC = [Player new];
    self.players = [[UINavigationController alloc]initWithRootViewController:playVC];
    self.players.title = @"Player";
    self.players.tabBarItem.image = [UIImage imageNamed:@"player"];
    
    News *newVC = [[News alloc]initWithNibName:@"News" bundle:nil];
    self.news = [[UINavigationController alloc]initWithRootViewController:newVC];
    self.news.title = @"News";
    self.news.tabBarItem.image = [UIImage imageNamed:@"news"];
    
    Club *clubVC = [Club new];
    self.clubs = [[UINavigationController alloc]initWithRootViewController:clubVC];
    self.clubs.title = @"Clubs";
    self.clubs.tabBarItem.image = [UIImage imageNamed:@"club"];
    
    iBet *iBetVC = [iBet new];
    self.iBets = [[UINavigationController alloc]initWithRootViewController:iBetVC];
    self.iBets.title = @"iBet";
    self.iBets.tabBarItem.image = [UIImage imageNamed:@"iBet"];
    
    Fixtures *fixturesVC = [Fixtures new];
    self.fixtures = [[UINavigationController alloc]initWithRootViewController:fixturesVC];
    self.fixtures.title = @"Fixtures";
    self.fixtures.tabBarItem.image = [UIImage imageNamed:@"fixtures"];
    
    NSArray* tabbarList = [NSArray arrayWithObjects:self.news,self.fixtures,self.iBets,self.clubs,self.players, nil];
    [self.tabbarController setViewControllers:tabbarList];
    self.window.rootViewController = self.tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
