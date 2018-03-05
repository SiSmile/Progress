//
//  SCHJump.h
//  SCHProgress
//
//  Created by Mike on 2018/1/15.
//  Copyright © 2018年 Mike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCHJump : NSObject

/**
 跳转到首页
 */
+(void)jumpToHomeViewController;


/**
 跳转到MVVM

 @param currentVC 当前视图
 @param title 标题
 */
+(void)jumpToMVVMViewController:(UIViewController *)currentVC Title:(NSString *)title;
/**
 跳转到蓝牙
 
 @param currentVC 当前视图
 @param title 标题
 */
+(void)jumpToBluetoothViewController:(UIViewController *)currentVC Title:(NSString *)title;
/**
 跳转到直播间
 
 @param currentVC 当前视图
 @param title 标题
 */
+(void)jumpToLiveSreamingController:(UIViewController *)currentVC Title:(NSString *)title;

/**
 跳转到百度地图界面

@param currentVC 当前视图
@param title 标题
*/
+(void)jumpToBaiDuController:(UIViewController *)currentVC Title:(NSString *)title;
/*************方法***************/

/**
 push

 @param currentVC 当前视图
 @param toVC 跳转到的视图
 */
+ (void)pushVC:(UIViewController *)currentVC ToVC:(UIViewController *)toVC;
@end
