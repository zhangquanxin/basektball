//
//  DetailViewCell.h
//  basektball
//
//  Created by MoMo on 2019/7/4.
//  Copyright © 2019 basektball. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet QMUIButton *team_one_jian;

@property (weak, nonatomic) IBOutlet QMUIButton *team_one_jia;

@property (weak, nonatomic) IBOutlet QMUIButton *team_two_jian;

@property (weak, nonatomic) IBOutlet QMUIButton *team_two_jia;

@property (weak, nonatomic) IBOutlet UILabel *count_label;

@property (weak, nonatomic) IBOutlet UILabel *team_one_goal;

@property (weak, nonatomic) IBOutlet UILabel *team_two_goal;

@property (weak, nonatomic) IBOutlet UIImageView *team_one_img;

@property (weak, nonatomic) IBOutlet UIImageView *team_two_img;

@end

NS_ASSUME_NONNULL_END
