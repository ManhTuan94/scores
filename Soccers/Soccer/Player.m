//
//  Player.m
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Player.h"
#import "Data.h"
#import "PlayerDetail.h"
@interface Player ()
{
    BOOL finded;
    NSMutableArray* list;
    NSMutableArray* find;
}
@end

@implementation Player

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
    self.title = @"All Player";
    self.searchBar.delegate =self;
    list = [NSMutableArray arrayWithArray: [[Data data] playerList]];
}

-(void) searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    if (searchText.length==0) {
        finded = NO;
    }else{
        finded = YES;
        find = [[NSMutableArray alloc] init];
        for(NSString* string in list)
        {
            NSRange stringRange = [string rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if ( stringRange.location !=NSNotFound ){
                [find addObject:string];
            }
        }
    }
    [self.tableView reloadData];
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
    if (finded) {
        return [find count];
    }
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (!finded) {
        cell.textLabel.text = list[indexPath.row];
    }else{
        cell.textLabel.text = find[indexPath.row];
    }
    
    return cell;
}
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [self.tableView resignFirstResponder];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!finded) {
        PlayerDetail* player = [[PlayerDetail alloc] initWithNibName:@"PlayerDetail" bundle:nil];
        [self.navigationController pushViewController:player animated:YES];
        NSArray* array = [[[Data data] playerDic] objectForKey:[[Data data] playerList][indexPath.row]];
        player.photo.image = [UIImage imageNamed:array[0]];
        player.name.text = array[1];
        player.age.text = array[2];
    }else{
        PlayerDetail* player = [[PlayerDetail alloc] initWithNibName:@"PlayerDetail" bundle:nil];
        [self.navigationController pushViewController:player animated:YES];
        NSArray* array = [[[Data data] playerDic] objectForKey:find[indexPath.row]];
        player.photo.image = [UIImage imageNamed:array[0]];
        player.name.text = array[1];
        player.age.text = array[2];

    }
   
}

@end
