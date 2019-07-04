//
//  ListViewCell.m
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "ListViewCell.h"

@implementation ListViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.team_img.layer.borderColor =  kRGBColor(233, 233, 233).CGColor;
    self.team_img.layer.borderWidth=1;
    
    self.team_two_img.layer.borderColor = kRGBColor(233, 233, 233).CGColor;
    self.team_two_img.layer.borderWidth=1;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
