//
//  HomeViewController.h
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JXPagerView;
@class JXCategoryTitleView;
NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController
@property (nonatomic, strong) JXPagerView *pagerView;
@property (nonatomic, strong) JXCategoryTitleView *categoryView;
@end

NS_ASSUME_NONNULL_END
