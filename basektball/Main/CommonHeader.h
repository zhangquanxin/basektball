//
//  CommonHeader.h
//  ss--xx
//
//  Created by MoMo on 2019/4/22.
//  Copyright © 2019 zds. All rights reserved.
//

#ifndef CommonHeader_h
#define CommonHeader_h


#endif /* CommonHeader_h */
//主色系
#define navBar_color [UIColor colorWithRed:204.0f/255.f green:0.0f/255.f  blue:0.0f/255.f  alpha:1]

#define navBar_TintColor  [UIColor colorWithRed:255.0f/255.f green:255.0f/255.f  blue:255.0f/255.f  alpha:1]

#define navBar_title_color [UIColor colorWithRed:255.0f/255.f green:255.0f/255.f  blue:255.0f/255.f  alpha:1]


#define tabBar_color [UIColor colorWithRed:204.0f/255.f green:0.f/255.f  blue:0.0f/255.f  alpha:1]

#define tabBar_tintColor [UIColor colorWithRed:255.0f/255.f green:255.0f/255.f  blue:255.0f/255.f  alpha:1]

#define tabBar_select_titleColor [UIColor colorWithRed:255.0f/255.f green:255.0f/255.f  blue:255.0f/255.f  alpha:1]

#define tabBar_titleColor  [UIColor colorWithRed:89.0f/255.f green:89.f/255.f  blue:89.0f/255.f  alpha:1]






//屏幕宽高
#define kScreenWidth \
([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] ? [UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale : [UIScreen mainScreen].bounds.size.width)
#define kScreenHeight \
([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] ? [UIScreen mainScreen].nativeBounds.size.height/[UIScreen mainScreen].nativeScale : [UIScreen mainScreen].bounds.size.height)
#define kScreenSize \
([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] ? CGSizeMake([UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale,[UIScreen mainScreen].nativeBounds.size.height/[UIScreen mainScreen].nativeScale) : [UIScreen mainScreen].bounds.size)

#define kRGBColor(r, g, b)    [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0]
#define kRGBAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]

#define KHSBColor(h,s,b)    [UIColor colorWithHue:h/360.0f saturation:s/100.0f brightness:b/100.0f]
#define KHSBAColor(h,s,b,a) [UIColor colorWithHue:h/360.0f saturation:s/100.0f brightness:b/100.0f alpha:a]

#define kRandomColor    KRGBColor(arc4random_uniform(256)/255.0f,arc4random_uniform(256)/255.0f,arc4random_uniform(256)/255.0f)        //随机色生成
#define kColorWithHex(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 \
green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 \
blue:((float)(rgbValue & 0xFF)) / 255.0 alpha:1.0]

#define kAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define kFont(x) [UIFont systemFontOfSize:x]

//永久存储对象
#define kSetUserDefaults(object, key)                                                                                                 \
({                                                                                                                                             \
NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];                                                                         \
[defaults setObject:object forKey:key];                                                                                                    \
[defaults synchronize];                                                                                                                    \
})
//获取对象
#define kGetUserDefaults(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]
//删除某一个对象
#define kRemoveUserDefaults(key)                                         \
({                                                                          \
NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];       \
[defaults removeObjectForKey:_key];                                     \
[defaults synchronize];                                                 \
})
//清除 NSUserDefaults 保存的所有数据
#define kRemoveAllUserDefaults  [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:[[NSBundle mainBundle] bundleIdentifier]]


//APP对象 （单例对象）
#define kApplication [UIApplication sharedApplication]
//主窗口 （keyWindow）
#define kKeyWindow [UIApplication sharedApplication].keyWindow

#define kAppDelegate (AppDelegate*)[UIApplication sharedApplication].delegate

// View 圆角和加边框
#define kViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]
// View 圆角
#define kViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]

//字符串是否为空
#define kISNullString(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )
//数组是否为空
#define kISNullArray(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0 ||[array isEqual:[NSNull null]])
//字典是否为空
#define kISNullDict(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0 || [dic isEqual:[NSNull null]])
//是否是空对象
#define kISNullObject(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))
//判断对象是否为空,为空则返回默认值
#define kGetNullDefaultObj(_value,_default) ([_value isKindOfClass:[NSNull class]] || !_value || _value == nil || [_value isEqualToString:@"(null)"] || [_value isEqualToString:@"<null>"] || [_value isEqualToString:@""] || [_value length] == 0)?_default:_value




#import "MainNavigationController.h"
#import "MainTabBarController.h"
#import "HomeViewController.h"
#import "AppendViewController.h"
#import "MineViewController.h"
#import "infoViewController.h"
#import "AboutusViewController.h"
#import "MIneTableViewCell.h"
#import "versionViewController.h"
#import "DetaiViewController.h"
#import "SearchViewController.h"



#import "QMUIKit.h"
#import "MBProgressHUD.h"
#import "IQKeyboardManager.h"
#import <pop/POP.h>
#import "TZImagePickerController.h"
#import "PYSearch.h"
#import "JXCategoryView.h"
#import <JXPagerView.h>
#import "VBFPopFlatButton.h"
#import "TOActionSheet.h"
#import "RZDatePickerView.h"
#import "MQCoreDataManager.h"
#import "UIViewController+HUD.h"
#import "DetailViewCell.h"
