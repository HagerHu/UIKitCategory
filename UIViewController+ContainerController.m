//
//  UIViewController+ContainerController.m
//  ReadCircle
//
//  Created by Hager Hu on 12/22/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UIViewController+ContainerController.h"


@implementation UIViewController (ContainerController)

- (void)addChildController:(UIViewController *)childController inView:(UIView *)view {
    [self addChildController:childController withFrame:view.bounds inView:view];
    
    childController.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}


- (void)addChildController:(UIViewController *)childController withFrame:(CGRect)rect inView:(UIView *)view {
    if (childController == nil || [self.childViewControllers indexOfObject:childController] != NSNotFound || view == nil) {
        return;
    }
    
    // 如果当前视图还没有加载，则调用一次view执行loadView方法
    if (!self.isViewLoaded) {
        [self.view sizeToFit];
    }
    
    [self addChildViewController:childController];
    childController.view.frame = rect;
    [view addSubview:childController.view];
    [childController didMoveToParentViewController:self];
}


- (void)removeChildController:(UIViewController *)childController {
    if (childController == nil) {
        return;
    }
    
    BOOL exists = [self.childViewControllers indexOfObject:childController] != NSNotFound;
    if (exists) {
        [childController willMoveToParentViewController:nil];
        [childController.view removeFromSuperview];
        [childController removeFromParentViewController];
    }
}

@end
