//
//  AppendViewController.m
//  basektball
//
//  Created by MoMo on 2019/7/2.
//  Copyright © 2019 basektball. All rights reserved.
//

#import "AppendViewController.h"

@interface AppendViewController ()<TZImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *mode_label;
@property (weak, nonatomic) IBOutlet UILabel *date_label;
@property (weak, nonatomic) IBOutlet UILabel *time_label;
@property (weak, nonatomic) IBOutlet UITextField *address_textfield;
@property (weak, nonatomic) IBOutlet UILabel *count_label;
@property (weak, nonatomic) IBOutlet UIImageView *img_one;
@property (weak, nonatomic) IBOutlet UILabel *color_one;
@property (weak, nonatomic) IBOutlet UITextField *name_one;
@property (weak, nonatomic) IBOutlet UIImageView *img_two;
@property (weak, nonatomic) IBOutlet UILabel *color_two;
@property (weak, nonatomic) IBOutlet UITextField *name_two;

@end

@implementation AppendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title =@"添加";

}

- (IBAction)append_game:(id)sender {
    
    if(![_mode_label.text isEqualToString:@"选择模式"]&&![_date_label.text isEqualToString:@"选择日期"]&&![_time_label.text isEqualToString:@"选择时长"]&&![_count_label.text isEqualToString:@"选择节数"]&&!kISNullString(_address_textfield.text) &&!kISNullString(_name_one.text)&&!kISNullString(_name_two.text)&&![_img_one.image isEqual:[UIImage imageNamed:@"photo"]]&&![_img_two.image isEqual:[UIImage imageNamed:@"photo"]] ){
        
       
        
        
        
        
        
        
        
        
        
        
        if ([kMQCoreDataManager save]) {
            
            [self.navigationController popViewControllerAnimated:YES];
        }
        
        
    }else{
        
        
        
        if ([_mode_label.text isEqualToString:@"选择模式"]) {
            [self showError:@"请选择模式"];
        }else if ([_date_label.text isEqualToString:@"选择日期"]){
            [self showError:@"请选择日期"];

        }else if (kISNullString(_address_textfield.text)){
            [self showError:@"请输入地址"];

        }else if ([_time_label.text isEqualToString:@"选择时长"]){
            [self showError:@"请选择时长"];

        }else if ([_count_label.text isEqualToString:@"选择节数"]){
            [self showError:@"请选择节数"];

        }else if ([_img_one.image isEqual:[UIImage imageNamed:@"photo"]]){
            [self showError:@"请上传球队图片"];
            
        }else if (kISNullString(_name_one.text)){
            [self showError:@"请输入球队1名称"];
            
        }else if ([_img_two.image isEqual:[UIImage imageNamed:@"photo"]]){
            [self showError:@"请上传球队图片"];
            
        }else{
            [self showError:@"请输入球队2名称"];
            
        }
        
    }
    
    
    
    
    
    
    
}
- (IBAction)selectTime:(id)sender {
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = @"A thing needs to be done.\nAre you sure you want to do it?";
    actionSheet.style =  TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleDefault;
    [actionSheet addButtonWithTitle:@"10分钟" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"15分钟" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"20分钟" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addDestructiveButtonWithTitle:@"30分钟" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    actionSheet.actionSheetDismissedBlock = ^{
        
    };
    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
    
    
    
    
}
- (IBAction)selectCount:(id)sender {
    
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = @"A thing needs to be done.\nAre you sure you want to do it?";
    actionSheet.style =  TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleDefault;
    [actionSheet addButtonWithTitle:@"1节" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"2节" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"3节" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addDestructiveButtonWithTitle:@"4节" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    actionSheet.actionSheetDismissedBlock = ^{
        
    };
    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
    
    
}

- (IBAction)selectTeamTwoColor:(id)sender {
    
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = @"A thing needs to be done.\nAre you sure you want to do it?";
    actionSheet.style =  TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleDefault;
    [actionSheet addDestructiveButtonWithTitle:@"蓝色" icon:[UIImage qmui_imageWithColor:[UIColor blueColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"黑色" icon:[UIImage qmui_imageWithColor:[UIColor blackColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"红色" icon:[UIImage qmui_imageWithColor:[UIColor redColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"黄色" icon:[UIImage qmui_imageWithColor:[UIColor orangeColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"绿色" icon:[UIImage qmui_imageWithColor:[UIColor greenColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"白色" icon:[UIImage qmui_imageWithColor:[UIColor whiteColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    actionSheet.actionSheetDismissedBlock = ^{
        
    };
    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
    
    
    
    
    
}

- (IBAction)selectTeamTwoPhoto:(id)sender {
    
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
    
    imagePickerVc.naviBgColor =  [UIColor colorWithRed:204.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1];
    
    __weak typeof(self) weakSelf =self;
    
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        
        
        //   UIImage * image = photos[0];
        //        weakSelf.planimg.image = [image qmui_imageResizedInLimitedSize:CGSizeMake(kScreenWidth-80, 160) resizingMode:QMUIImageResizingModeScaleAspectFill];
        
    }];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
    
    
    
}




- (IBAction)selectTeamOneColor:(id)sender {
    
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = @"A thing needs to be done.\nAre you sure you want to do it?";
    actionSheet.style =  TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleDefault;
    [actionSheet addDestructiveButtonWithTitle:@"蓝色" icon:[UIImage qmui_imageWithColor:[UIColor blueColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"黑色" icon:[UIImage qmui_imageWithColor:[UIColor blackColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"红色" icon:[UIImage qmui_imageWithColor:[UIColor redColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"黄色" icon:[UIImage qmui_imageWithColor:[UIColor orangeColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"绿色" icon:[UIImage qmui_imageWithColor:[UIColor greenColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
    
    [actionSheet addButtonWithTitle:@"白色" icon:[UIImage qmui_imageWithColor:[UIColor whiteColor] size:CGSizeMake(24, 24) cornerRadius:12] tappedBlock:^{
        
    }];
 
    actionSheet.actionSheetDismissedBlock = ^{
        
    };
    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
    
    
    
    
}





- (IBAction)selectTeamOnePhoto:(id)sender {
    
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
    
    
    imagePickerVc.naviBgColor =  [UIColor colorWithRed:204.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1];
    
    __weak typeof(self) weakSelf =self;
    
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        
        
     //   UIImage * image = photos[0];
//        weakSelf.planimg.image = [image qmui_imageResizedInLimitedSize:CGSizeMake(kScreenWidth-80, 160) resizingMode:QMUIImageResizingModeScaleAspectFill];
        
    }];
    [self presentViewController:imagePickerVc animated:YES completion:nil];


}



- (IBAction)selectDate:(id)sender {
    
    RZDatePickerView *datepicker = [[RZDatePickerView alloc] initWithCurrentDate:[NSDate date:@"2019-6-15 11:11" WithFormat:@"yyyy-MM-dd HH:mm"] CompleteBlock:^(NSDate *startDate) {
    }];
    datepicker.themeColor = navBar_color;
    //datepicker.datePickerStyle = DateStyleShowYearMonthDay;
    //datepicker.datePickerStyle = DateStyleShowYearMonthDayHourMinute;
    //    datepicker.datePickerStyle = DateStyleShowMonthDayHourMinute;
    //    datepicker.datePickerStyle = DateStyleShowYearMonthDay;
    //    datepicker.datePickerStyle = DateStyleShowMonthDay;
    datepicker.datePickerStyle = DateStyleShowHourMinute;
    datepicker.minLimitDate = [NSDate date:@"1997-2-28 12:22" WithFormat:@"yyyy-MM-dd HH:mm"];
    datepicker.maxLimitDate = [NSDate date:@"2022-12-28 22:12" WithFormat:@"yyyy-MM-dd HH:mm"];
    // 默认值——选择时间
    datepicker.title =  @"选择日期";
    [datepicker show];
    
}



- (IBAction)selectMode:(id)sender {
    TOActionSheet *actionSheet = [[TOActionSheet alloc] init];
    actionSheet.title = @"A thing needs to be done.\nAre you sure you want to do it?";
    actionSheet.style =  TOActionSheetStyleLight;
    actionSheet.contentstyle = TOActionSheetContentStyleDefault;
    [actionSheet addButtonWithTitle:@"5V5" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addButtonWithTitle:@"4V4" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    [actionSheet addDestructiveButtonWithTitle:@"3V3" icon:[UIImage imageNamed:@"lanqiu"] tappedBlock:^{
        
    }];
    actionSheet.actionSheetDismissedBlock = ^{
        
    };
    UIButton *button = (UIButton *)sender;
    [actionSheet showFromView:button inView:self.navigationController.view];
    
    
}


@end
