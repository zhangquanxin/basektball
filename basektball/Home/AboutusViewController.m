//
//  AboutusViewController.m
//  LYOUJH
//
//  Created by 张全新 on 2019/6/27.
//  Copyright © 2019 yjh. All rights reserved.
//

#import "AboutusViewController.h"

@interface AboutusViewController ()
@property (weak, nonatomic) IBOutlet UILabel *about;

@end

@implementation AboutusViewController
- (IBAction)dismiss:(id)sender {
    [self.navigationController popViewControllerAnimated:NO];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title =@"关于";

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
