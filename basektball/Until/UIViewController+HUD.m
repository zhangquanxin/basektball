//
//  UIViewController+HUD.m
//  ss--xx
//
//  Created by 张全新 on 2019/4/24.
//  Copyright © 2019 zds. All rights reserved.
//


#import "UIViewController+HUD.h"

@implementation UIViewController (HUD)

-(void)showBgm:(NSString*)imagename withTitle:(NSString*)title{
    
    
    MBProgressHUD *HUD=[[MBProgressHUD alloc]init];
    HUD.backgroundView.color = [UIColor colorWithWhite:0.f alpha:.2f];

    HUD.contentColor=[UIColor whiteColor];
    HUD.bezelView.color=[UIColor blackColor];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.customView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imagename]];
    HUD.label.text=title;
    //HUD.detailsLabel.text =title;

    HUD.removeFromSuperViewOnHide=YES;
    [kKeyWindow addSubview:HUD];

    [HUD showAnimated:YES];
    [HUD hideAnimated:YES afterDelay:1];
}


-(void)showSuccess:(NSString *)success
{
    MBProgressHUD *HUD=[[MBProgressHUD alloc]init];

    HUD.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    HUD.bezelView.backgroundColor = [UIColor blackColor];
    
    HUD.contentColor=[UIColor whiteColor];

    HUD.mode=MBProgressHUDModeText;
    HUD.label.text=success;
   // HUD.detailsLabel.text =success;

    HUD.removeFromSuperViewOnHide=YES;
    [kKeyWindow addSubview:HUD];
    [HUD showAnimated:YES];
    [HUD hideAnimated:YES afterDelay:1];
}
-(void)showError:(NSString *)error
{
    MBProgressHUD *HUD=[[MBProgressHUD alloc]init];
   // HUD.backgroundView.color = [UIColor colorWithWhite:0.f alpha:.2f];

    //HUD.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    //HUD.bezelView.backgroundColor =[UIColor clearColor];
    
    HUD.contentColor=[UIColor whiteColor];
    HUD.bezelView.color=[UIColor blackColor];
    
    HUD.mode=MBProgressHUDModeText;
    HUD.label.text=error;
   // HUD.detailsLabel.text =error;
    HUD.removeFromSuperViewOnHide=YES;
    [kKeyWindow addSubview:HUD];
    [HUD showAnimated:YES];
    [HUD hideAnimated:YES afterDelay:1];
}


@end
