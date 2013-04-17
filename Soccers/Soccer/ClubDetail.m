//
//  ClubDetail.m
//  Soccer
//
//  Created by Tuan EM on 4/16/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "ClubDetail.h"
#import "Data.h"
#import "Club.h"
#import "PlayerDetail.h"
@interface ClubDetail ()
@property(strong,nonatomic) UITableView* detailTable;
@end

@implementation ClubDetail
@synthesize listPlayerDetail,keyDetail;
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
    self.detailTable = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.detailTable.delegate = self;
    self.detailTable.dataSource = self;
    [self.view addSubview:self.detailTable];
    [self.detailTable setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"map.jpg"]]];
}
-(NSInteger) tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = listPlayerDetail[indexPath.row];
    [cell.textLabel setTextColor:[UIColor yellowColor]];
    
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PlayerDetail* player = [[PlayerDetail alloc] initWithNibName:@"PlayerDetail" bundle:nil];
    [self.navigationController pushViewController:player animated:YES];
    NSArray* array= [[[[Data data] Club] objectForKey:keyDetail] objectForKey:listPlayerDetail[indexPath.row]];
    player.photo.image = [UIImage imageNamed:array[0]];
    player.name.text = array[1];
    player.age.text = array[2];
    
}
@end
