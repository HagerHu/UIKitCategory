//
//  UIViewController+ContainerController.h
//  ReadCircle
//
//  Created by Hager Hu on 12/22/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ContainerController)

/**
 *	添加某视图控制器作为当前视图控制器的子视图控制器
 *
 *	@param	childController	要添加的子视图控制器
 *	@param	view	需要添加到的父视图
 */
- (void)addChildController:(UIViewController *)childController inView:(UIView *)view;


/**
 *	添加某视图控制器作为当前视图控制器的子视图控制器
 *
 *	@param	childController	要添加的子视图控制器
 *	@param	rect	要添加的子视图控制器在当前视图中的显示区域
 *	@param	view	要添加的子视图控制器要添加到的父视图
 */
- (void)addChildController:(UIViewController *)childController withFrame:(CGRect)rect inView:(UIView *)view;


/**
 *	移除某子视图控制器
 *
 *	@param	childController	需要移除的子视图控制器
 */
- (void)removeChildController:(UIViewController *)childController;

@end
