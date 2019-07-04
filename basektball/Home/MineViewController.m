//
//  MineViewController.m
//  LYOUJH
//
//  Created by MoMo on 2019/6/25.
//  Copyright © 2019 yjh. All rights reserved.
//

#import "MineViewController.h"

@interface MineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *minetableview;
@property (nonatomic ,strong)NSArray *array;
@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
    
    self.array =@[@"信息反馈",@"关于我们",@"版本信息",@"清除缓存"];
    self.minetableview.delegate=self;
    self.minetableview.dataSource =self;
    
    
    [self.minetableview registerNib:[UINib nibWithNibName:@"MIneTableViewCell" bundle:nil] forCellReuseIdentifier:@"MIneTableViewCell"];
    
    self.navigationItem.title =@"我的";

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return 1;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  [self.array count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MIneTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MIneTableViewCell" forIndexPath:indexPath];
    
    cell.title.text = [self.array objectAtIndex:indexPath.row];
   
    if (indexPath.row ==3) {
        [cell.right_img setHidden:YES];

    }
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    
    return 70;
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    
    if (indexPath.row==0) {
        
        infoViewController * info = [[infoViewController alloc]initWithNibName:@"infoViewController" bundle:nil];
        
        [self.navigationController pushViewController:info animated:NO];
    }else if (indexPath.row==1){
        
        AboutusViewController * about = [[AboutusViewController alloc]initWithNibName:@"AboutusViewController" bundle:nil];
        
        [self.navigationController pushViewController:about animated:NO];
        
    }else if (indexPath.row==2){
        
        versionViewController * version = [[versionViewController alloc]initWithNibName:@"versionViewController" bundle:nil];
        
        [self.navigationController pushViewController:version animated:NO];
        
    }else{
        
        
//        NSArray * arr_plan = [[MKCoreDataManager shareManager].managedObjectContext executeFetchRequest:[Plan fetchRequest] error:nil];
//        
//        for (Plan * plan in arr_plan) {
//            
//            [[MKCoreDataManager shareManager].managedObjectContext deleteObject:plan];
//        }
//        NSArray * arr_trip = [[MKCoreDataManager shareManager].managedObjectContext executeFetchRequest:[Trip fetchRequest] error:nil];
//        
//        for (Trip * trip in arr_trip) {
//            
//            [[MKCoreDataManager shareManager].managedObjectContext deleteObject:trip];
//        }
//        
//        if(  [[MKCoreDataManager shareManager]saveContext]){
//            
//            
//            [self showBgm:@"duigou" withTitle:@"清除成功"];
//            
//            
//        }
        
        
        
    }
    
    
    
    
}
@end
