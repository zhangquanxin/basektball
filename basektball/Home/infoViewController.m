//
//  infoViewController.m
//  LYOUJH
//
//  Created by 张全新 on 2019/6/27.
//  Copyright © 2019 yjh. All rights reserved.
//

#import "infoViewController.h"

@interface infoViewController ()

@end

@implementation infoViewController
- (IBAction)sumbit:(id)sender {
    
    
    
}
- (IBAction)dismiss:(id)sender {
    
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title =@"反馈";

    self.shadowback.layer.cornerRadius = 10;
    self.shadowback.layer.shadowColor = [UIColor blackColor].CGColor;;
    self.shadowback.layer.shadowOffset = CGSizeMake(0, 0);
    self.shadowback.layer.shadowOpacity = 0.5;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
