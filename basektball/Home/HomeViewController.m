//
//  HomeViewController.m
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "HomeViewController.h"
#import "ListView.h"
#import "AppDelegate.h"

@interface HomeViewController ()<JXCategoryViewDelegate,JXPagerViewDelegate, JXPagerMainTableViewGestureDelegate>
@property (weak, nonatomic) IBOutlet QMUIFillButton *append_button;

@end

@implementation HomeViewController
- (IBAction)append:(id)sender {
    
    AppendViewController * append =[[AppendViewController alloc]initWithNibName:@"AppendViewController" bundle:nil];

    [self.navigationController pushViewController:append animated:YES];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    QMUIButton * button_right =[[QMUIButton alloc]initWithFrame:CGRectMake(0, 0, 25, 25)];
    
    [button_right setTitle:@"搜索" forState:UIControlStateNormal];
    
    [button_right setTintColorAdjustsTitleAndImage:navBar_TintColor];
    
    [button_right setQmui_tapBlock:^(__kindof UIControl *sender) {
        
        // 1. Create hotSearches array
        NSArray *hotSeaches = @[@"NBA", @"CBA", @"青年杯", @"青年联赛", @"大学联赛", @"高中联赛"];
        // 2. Create searchViewController
        PYSearchViewController *searchViewController = [PYSearchViewController searchViewControllerWithHotSearches:hotSeaches searchBarPlaceholder:@"Search Competition" didSearchBlock:^(PYSearchViewController *searchViewController, UISearchBar *searchBar, NSString *searchText) {
            // Call this Block when completion search automatically
            // Such as: Push to a view controller
            [searchViewController.navigationController pushViewController:[[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil] animated:YES];
            
        }];
        // 3. present the searchViewController
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:searchViewController];
        [self presentViewController:nav  animated:NO completion:nil];
        
    }];
    
    UIBarButtonItem * barButoonItem_right = [[UIBarButtonItem alloc]initWithCustomView:button_right];
    self.navigationItem.rightBarButtonItems =@[barButoonItem_right];

 

    
    
    _categoryView = [[JXCategoryTitleView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,50)];
    self.categoryView.titles = @[@"全部",@"进行中",@"已结束"];
    self.categoryView.backgroundColor = kRGBColor(204, 0, 0);
    self.categoryView.delegate = self;
    self.categoryView.titleSelectedColor =[UIColor whiteColor];
    self.categoryView.titleColor = [UIColor whiteColor];
    self.categoryView.titleColorGradientEnabled = YES;
    self.categoryView.titleLabelZoomEnabled = YES;
    self.categoryView.titleLabelZoomEnabled = YES;
    
    
    
    JXCategoryIndicatorLineView *lineView = [[JXCategoryIndicatorLineView alloc] init];
    lineView.indicatorLineViewColor =[UIColor whiteColor];
    lineView.indicatorLineWidth = 30;
    self.categoryView.indicators = @[lineView];
    
    _pagerView = [[JXPagerView alloc]initWithDelegate:self];;
    self.pagerView.mainTableView.gestureDelegate = self;
    [self.view addSubview:self.pagerView];
    
    self.categoryView.contentScrollView = self.pagerView.listContainerView.collectionView;
    
    //导航栏隐藏的情况，处理扣边返回，下面的代码要加上
    [self.pagerView.listContainerView.collectionView.panGestureRecognizer requireGestureRecognizerToFail:self.navigationController.interactivePopGestureRecognizer];
    [self.pagerView.mainTableView.panGestureRecognizer requireGestureRecognizerToFail:self.navigationController.interactivePopGestureRecognizer];
    
    
    
    self.navigationItem.titleView = self.categoryView;
    [self.view bringSubviewToFront:self.append_button];
    self.navigationItem.backBarButtonItem  = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];

    
    
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.pagerView.frame = self.view.bounds;
}

#pragma mark - JXPagerViewDelegate

- (UIView *)tableHeaderViewInPagerView:(JXPagerView *)pagerView {
    return [UIView new];
}

- (NSUInteger)tableHeaderViewHeightInPagerView:(JXPagerView *)pagerView {
    return 0;
}

- (NSUInteger)heightForPinSectionHeaderInPagerView:(JXPagerView *)pagerView {
    return 20;
}

- (UIView *)viewForPinSectionHeaderInPagerView:(JXPagerView *)pagerView {
    return [UIView new];//self.categoryView;
}

- (NSInteger)numberOfListsInPagerView:(JXPagerView *)pagerView {
    //和categoryView的item数量一致
    return self.categoryView.titles.count;
}

- (id<JXPagerViewListViewDelegate>)pagerView:(JXPagerView *)pagerView initListAtIndex:(NSInteger)index {
   
    ListView * listview = [[ListView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, self.view.bounds.size.height-50)];
    
    listview.viewController =self;

    return listview;
    
}

#pragma mark - JXCategoryViewDelegate

- (void)categoryView:(JXCategoryBaseView *)categoryView didSelectedItemAtIndex:(NSInteger)index {
    self.navigationController.interactivePopGestureRecognizer.enabled = (index == 0);
}

- (void)categoryView:(JXCategoryBaseView *)categoryView didClickedItemContentScrollViewTransitionToIndex:(NSInteger)index {
    //请务必实现该方法
    //因为底层触发列表加载是在代理方法：`- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath`回调里面
    //所以，如果当前有5个item，当前在第1个，用于点击了第5个。categoryView默认是通过设置contentOffset.x滚动到指定的位置，这个时候有个问题，就会触发中间2、3、4的cellForItemAtIndexPath方法。
    //如此一来就丧失了延迟加载的功能
    //所以，如果你想规避这样的情况发生，那么务必按照这里的方法处理滚动。
    [self.pagerView.listContainerView.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
    
    //如果你想相邻的两个item切换时，通过有动画滚动实现。未相邻的两个item直接切换，可以用下面这段代码
    /*
     NSInteger diffIndex = labs(categoryView.selectedIndex - index);
     if (diffIndex > 1) {
     [self.pagerView.listContainerView.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
     }else {
     [self.pagerView.listContainerView.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
     }
     */
}

#pragma mark - JXPagerMainTableViewGestureDelegate

- (BOOL)mainTableViewGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    //禁止categoryView左右滑动的时候，上下和左右都可以滚动
    if (otherGestureRecognizer == self.categoryView.collectionView.panGestureRecognizer) {
        return NO;
    }
    return [gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]] && [otherGestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]];
}


@end
