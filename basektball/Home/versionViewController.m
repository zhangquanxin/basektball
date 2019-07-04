//
//  versionViewController.m
//  LYOUJH
//
//  Created by 张全新 on 2019/6/27.
//  Copyright © 2019 yjh. All rights reserved.
//

#import "versionViewController.h"

@interface versionViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *icon_img;
@property (weak, nonatomic) IBOutlet UILabel *version;

@end

@implementation versionViewController
- (IBAction)dismiss:(id)sender {
    [self.navigationController popViewControllerAnimated:NO];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.version.text = [NSString stringWithFormat:@"%@",kAppVersion];
    
    self.navigationItem.title =@"版本";

}



@end
