//
//  SCHJump.m
//  SCHProgress
//
//  Created by Mike on 2018/1/15.
//  Copyright © 2018年 Mike. All rights reserved.
//

#import "SCHJump.h"
#import "SCHHomeViewController.h"
#import "SCHMvvmViewController.h"
#import "SCHBluetoothViewController.h"
#import "SCHLiveStreamingController.h"
#import "SCHBaiDuViewController.h"

@implementation SCHJump

#pragma mark -- 跳转到首页
+(void)jumpToHomeViewController{
    SCHHomeViewController *home = [[SCHHomeViewController alloc] init];
    home.vcTitle = @"首页";
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:home];
    kAppWindow.rootViewController = nav;
}
#pragma mark -- 跳转到mvvm
+(void)jumpToMVVMViewController:(UIViewController *)currentVC Title:(NSString *)title{
    SCHMvvmViewController *vc = [[SCHMvvmViewController alloc] init];
    vc.vcTitle = title;
    [SCHJump pushVC:currentVC ToVC:vc];
}
#pragma mark -- 跳转到mvvm
+(void)jumpToBluetoothViewController:(UIViewController *)currentVC Title:(NSString *)title{
    SCHBluetoothViewController *vc = [[SCHBluetoothViewController alloc] init];
    vc.vcTitle = title;
    [SCHJump pushVC:currentVC ToVC:vc];
}
#pragma mark -- 跳转到直播间
+(void)jumpToLiveSreamingController:(UIViewController *)currentVC Title:(NSString *)title{
    SCHLiveStreamingController *vc = [[SCHLiveStreamingController alloc] init];
    vc.vcTitle = title;
    [SCHJump pushVC:currentVC ToVC:vc];
}
#pragma mark -- 跳转到百度地图界面
+(void)jumpToBaiDuController:(UIViewController *)currentVC Title:(NSString *)title{
    SCHBaiDuViewController *vc = [[SCHBaiDuViewController alloc] init];
    vc.vcTitle = title;
    [SCHJump pushVC:currentVC ToVC:vc];
}
/**********跳转方式************/
#pragma mark -- push
+ (void)pushVC:(UIViewController *)currentVC ToVC:(UIViewController *)toVC{
    if (currentVC != nil && currentVC.navigationController != nil) {
       [currentVC.navigationController pushViewController:toVC animated:YES];
    }else{
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        UINavigationController *nav = (UINavigationController *)window.rootViewController;
        [nav pushViewController:toVC animated:YES];
        
    }
}

#pragma mark -- present
+ (void)presentToVC:(UIViewController *)controller{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UINavigationController *mainTabBar = (UINavigationController *)window.rootViewController;
    [mainTabBar presentViewController:controller animated:YES completion:nil];
}

#pragma mark -- dismiss
+ (void)dismissFromVC{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UINavigationController *mainTabBar = (UINavigationController *)window.rootViewController;
    [mainTabBar dismissViewControllerAnimated:YES completion:nil];
}
@end
