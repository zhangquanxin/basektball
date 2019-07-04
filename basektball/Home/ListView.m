//
//  ListView.m
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "ListView.h"
#import "ListViewCell.h"


typedef NS_ENUM(NSInteger, CompetitionStatus) {
    CompetitionProgress =0,
    CompetitionFinish
};
@interface ListView ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, copy) void(^scrollCallback)(UIScrollView *scrollView);
@property (nonatomic, strong) NSIndexPath *lastSelectedIndexPath;

@end

@implementation ListView


- (void)dealloc
{
    self.scrollCallback = nil;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) style:UITableViewStylePlain];
        self.tableView.backgroundColor = [UIColor whiteColor];
        self.tableView.tableFooterView = [UIView new];
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.tableView registerNib:[UINib nibWithNibName:@"ListViewCell" bundle:nil]  forCellReuseIdentifier:@"ListViewCell"];
        [self addSubview:self.tableView];
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.tableView.frame = self.bounds;
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
    
    [self.viewController.navigationController pushViewController:detail animated:YES];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    !self.scrollCallback ?: self.scrollCallback(scrollView);
}

#pragma mark - JXPagingViewListViewDelegate

- (UIView *)listView {
    return self;
}

- (UIScrollView *)listScrollView {
    return self.tableView;
}

- (void)listViewDidScrollCallback:(void (^)(UIScrollView *))callback {
    self.scrollCallback = callback;
}

- (void)listDidAppear {
    NSLog(@"listDidAppear");
    [self.tableView reloadData];
}

- (void)listDidDisappear {
    NSLog(@"listDidDisappear");
}




-(NSString * )competitionStatus:(CompetitionStatus)competitionStatus{
    
    NSString * string;
    
    if (competitionStatus == 0) {
        
        string= @"进行中";
        
    }else if (competitionStatus == 1) {
        
        string= @"已结束";
        
    }else{
        
        string =nil;
    }
    
    return string;
}

@end
