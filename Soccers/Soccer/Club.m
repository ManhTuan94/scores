//
//  Club.m
//  Soccer
//
//  Created by TOM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Club.h"
#import "Data.h"
#import "ClubDetail.h"

@interface Club ()
    
@end

@implementation Club
@synthesize listPlayer,keyClub;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"map.jpg"]]];
    self.title= @"Club List";
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 4;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [[Data data] clubs][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[[Data data] logos][indexPath.row]];
    [cell.textLabel setTextColor:[UIColor yellowColor]];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
     ClubDetail *detailViewController = [[ClubDetail alloc] initWithNibName:@"ClubDetail" bundle:nil];
     [self.navigationController pushViewController:detailViewController animated:YES];
    detailViewController.title = [[Data data] clubs][indexPath.row];
    NSArray* array= [[[[Data data] Club] objectForKey:[[Data data] clubs][indexPath.row]] allKeys ];
    listPlayer = [array sortedArrayUsingSelector: @selector(localizedCaseInsensitiveCompare:)];    detailViewController.listPlayerDetail = listPlayer;
    keyClub = [[Data data] clubs][indexPath.row];
    detailViewController.keyDetail = keyClub;

}

@end
