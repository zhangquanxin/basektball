//
//  SearchViewController.m
//  basektball
//
//  Created by MoMo on 2019/7/4.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "SearchViewController.h"
#import "ListViewCell.h"

@interface SearchViewController ()
@property (weak, nonatomic) IBOutlet UITableView *SearchListView;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.SearchListView registerNib:[UINib nibWithNibName:@"ListViewCell" bundle:nil]  forCellReuseIdentifier:@"ListViewCell"];
    self.navigationItem.title = @"搜索";
    
}


#pragma mark - UITableViewDataSource, UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    ListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListViewCell" forIndexPath:indexPath];
    
    cell.team_img.image =[UIImage imageNamed:@""];
    
    cell.team_two_img.image = [UIImage imageNamed:@""];
    
    cell.teamn_one_name.text = @"";
    
    cell.team_two_name.text = @"";
    
    cell.team_one_goal.text = @"";
    
    cell.team_two_goal.text = @"";
    
    cell.game_status.text = @"";
    
    cell.game_date.text = @"";
    
    cell.game_mode.text = @"";
    
    cell.game_time.text = @"";
    
    cell.game_count.text = @"";
    
    cell.game_address.text = @"";
    
    
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 260;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetaiViewController * detail =[[DetaiViewController alloc]initWithNibName:@"DetaiViewController" bundle:nil];
    
    [self.navigationController pushViewController:detail animated:YES];
    
}

@end
