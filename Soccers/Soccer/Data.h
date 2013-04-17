//
//  Data.h
//  Soccer
//
//  Created by Tuan EM on 4/15/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
@property(strong,nonatomic) NSArray* logos;
@property(strong,nonatomic) NSArray* clubs;
@property(strong,nonatomic) NSArray* playerList;
@property(strong,nonatomic) NSDictionary* clubList;
@property(strong,nonatomic) NSDictionary* Club;
@property(strong,nonatomic) NSMutableDictionary* playerDic;

+(Data*) data;
@end
