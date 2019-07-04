//
//  ListViewCell.h
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *team_img;

@property (weak, nonatomic) IBOutlet UIImageView *team_two_img;


@property (weak, nonatomic) IBOutlet UILabel *teamn_one_name;

@property (weak, nonatomic) IBOutlet UILabel *team_two_name;

@property (weak, nonatomic) IBOutlet UILabel *team_one_goal;

@property (weak, nonatomic) IBOutlet UILabel *team_two_goal;

@property (weak, nonatomic) IBOutlet UILabel *game_status;

@property (weak, nonatomic) IBOutlet UILabel *game_time;

@property (weak, nonatomic) IBOutlet UILabel *game_date;

@property (weak, nonatomic) IBOutlet UILabel *game_address;

@property (weak, nonatomic) IBOutlet UILabel *game_count;

@property (weak, nonatomic) IBOutlet UILabel *game_mode;

@end

NS_ASSUME_NONNULL_END
