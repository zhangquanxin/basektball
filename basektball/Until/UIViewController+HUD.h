//
//  UIViewController+HUD.h
//  ss--xx
//
//  Created by 张全新 on 2019/4/24.
//  Copyright © 2019 zds. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^completionBlock)(void);
@interface UIViewController (HUD)
-(void)showSuccess:(NSString *)success;
-(void)showError:(NSString *)error;
-(void)showBgm:(NSString*)imagename withTitle:(NSString*)title;

@end

NS_ASSUME_NONNULL_END
