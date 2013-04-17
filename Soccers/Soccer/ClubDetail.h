//
//  ClubDetail.h
//  Soccer
//
//  Created by Tuan EM on 4/16/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClubDetail : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic) NSArray* listPlayerDetail;
@property (strong,nonatomic) NSString* keyDetail;
@end
