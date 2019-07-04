//
//  ListView.h
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListView : UIView <JXPagerViewListViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIViewController * viewController;
@end

NS_ASSUME_NONNULL_END
