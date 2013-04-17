//
//  Data.m
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize logos,clubs,playerList,Club,playerDic;
+(Data*) data{
    static Data* data = nil;
    if (!data) {
        data = [[super allocWithZone:nil] init];
    }
    return data;
}
+(id) allocWithZone:(NSZone *)zone
{
    return [self data];
}

-(id) init
{
    self = [super init];
    if (self) {
        
        NSString* path = [[NSBundle mainBundle] pathForResource:@"Clubs"ofType:@"plist"];
        NSDictionary* _dic = [NSDictionary dictionaryWithContentsOfFile:path];
        logos=[_dic objectForKey:@"Logo"];
        Club = [[NSDictionary alloc] init];
        Club = [_dic objectForKey:@"Club"];
        NSArray* sortClub = [Club allKeys];
        clubs = [sortClub sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
      
        NSMutableArray* array1234 = [[NSMutableArray alloc] init];
        [array1234 addObjectsFromArray:[[Club objectForKey:@"MU"] allKeys]];
        [array1234 addObjectsFromArray:[[Club objectForKey:@"Arsenal"] allKeys]];
        [array1234 addObjectsFromArray:[[Club objectForKey:@"Liverpool"] allKeys]];
        [array1234 addObjectsFromArray:[[Club objectForKey:@"Chealsea"] allKeys]];
        NSArray* sortPlayer = [[NSArray alloc] initWithArray:array1234];
        playerList = [sortPlayer sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
        playerDic = [[NSMutableDictionary alloc] initWithDictionary:[Club objectForKey:@"MU"]];
        [playerDic addEntriesFromDictionary:[Club objectForKey:@"Arsenal"]];
        [playerDic addEntriesFromDictionary:[Club objectForKey:@"Liverpool"]];
        [playerDic addEntriesFromDictionary:[Club objectForKey:@"Chealsea"]];

    }
    return self;
}
@end
