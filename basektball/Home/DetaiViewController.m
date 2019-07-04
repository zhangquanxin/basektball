//
//  DetaiViewController.m
//  basektball
//
//  Created by MoMo on 2019/7/3.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "DetaiViewController.h"

@interface DetaiViewController ()<NSFetchedResultsControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *team_one_img;
@property (weak, nonatomic) IBOutlet UIImageView *team_two_img;

@property (weak, nonatomic) IBOutlet UILabel *count;

@property (weak, nonatomic) IBOutlet UILabel *team_one_total;
@property (weak, nonatomic) IBOutlet UILabel *team_two_total;

@property (weak, nonatomic) IBOutlet UITableView *detaiTableview;
@property (weak, nonatomic) IBOutlet UILabel *team_one_name;
@property (weak, nonatomic) IBOutlet UILabel *team_two_name;

@end

@implementation DetaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title =@"详情";
    
    QMUIButton * button_right =[[QMUIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    
    button_right.adjustsImageWhenDisabled =NO;
    button_right.adjustsButtonWhenDisabled = NO;
    
    button_right.adjustsImageWhenHighlighted = NO;
    button_right.adjustsButtonWhenHighlighted = NO;
    
    
    [button_right setTitle:@"进行中" forState:UIControlStateNormal];
    
    [button_right setTintColorAdjustsTitleAndImage:navBar_TintColor];
    
    UIBarButtonItem * barButoonItem_right = [[UIBarButtonItem alloc]initWithCustomView:button_right];
    
    self.navigationItem.rightBarButtonItems =@[barButoonItem_right];

    [self.detaiTableview registerNib:[UINib nibWithNibName:@"DetailViewCell" bundle:nil] forCellReuseIdentifier:@"DetailViewCell"];

    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return 1;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  4;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    DetailViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DetailViewCell" forIndexPath:indexPath];
    
    cell.team_one_goal.text = @"0";
    
    cell.team_two_goal.text =@"0";
    
    cell.team_one_img.image = [UIImage imageNamed:@""];
    
    cell.team_one_img.image = [UIImage imageNamed:@""];
    
    [cell.team_one_jian setQmui_tapBlock:^(__kindof UIControl *sender) {
        
    }];
    [cell.team_one_jia setQmui_tapBlock:^(__kindof UIControl *sender) {
        
    }];
    [cell.team_two_jian setQmui_tapBlock:^(__kindof UIControl *sender) {
        
    }];
    [cell.team_two_jia setQmui_tapBlock:^(__kindof UIControl *sender) {
        
    }];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    
    return 160;
    
    
}

@end
