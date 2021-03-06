//
//  UITabBarController+ScrollHidden.m
//  ReadCircle
//
//  Created by Hager Hu on 2/15/14.
//  Copyright (c) 2014 Hager Hu. All rights reserved.
//

#import "UITabBarController+ScrollHidden.h"

#define TABBAR_HEIGHT (49)


@implementation UITabBarController (ScrollHidden)

- (void)setTabBarHidden:(BOOL)hidden animated:(BOOL)animated {
    if ([self.view.subviews count] < 2) {
        return;
    }
    
	UIView *contentView = nil;
    
	if ([[self.view.subviews objectAtIndex:0] isKindOfClass:[UITabBar class]]) {
        contentView = [self.view.subviews objectAtIndex:1];
    } else {
        contentView = [self.view.subviews objectAtIndex:0];
    }
    
    if (hidden) {
        if (animated) {
            [UIView animateWithDuration:0.2 animations:^{
                contentView.frame = self.view.bounds;
                                 
                self.tabBar.frame = CGRectMake(self.view.bounds.origin.x,
                                               self.view.bounds.size.height,
                                               self.view.bounds.size.width,
                                               TABBAR_HEIGHT);
            } completion:^(BOOL finished) {
                contentView.frame = CGRectMake(self.view.bounds.origin.x,
                                               self.view.bounds.size.height,
                                               self.view.bounds.size.width,
                                               TABBAR_HEIGHT);
            }];
        } else {
            contentView.frame = self.view.bounds;
            
            self.tabBar.frame = CGRectMake(self.view.bounds.origin.x,
                                           self.view.bounds.size.height,
                                           self.view.bounds.size.width,
                                           TABBAR_HEIGHT);
        }
    } else {
        self.tabBar.frame = CGRectMake(self.view.bounds.origin.x,
                                       self.view.bounds.size.height,
                                       self.view.bounds.size.width,
                                       0);
        if (animated) {
            [UIView animateWithDuration:0.2 animations:^{
                self.tabBar.frame = CGRectMake(self.view.bounds.origin.x,
                                               self.view.bounds.size.height - TABBAR_HEIGHT,
                                               self.view.bounds.size.width,
                                               TABBAR_HEIGHT);
            } completion:^(BOOL finished) {
                contentView.frame = CGRectMake(self.view.bounds.origin.x,
                                               self.view.bounds.origin.y,
                                               self.view.bounds.size.width,
                                               self.view.bounds.size.height - TABBAR_HEIGHT);
            }];
        } else {
            contentView.frame = CGRectMake(self.view.bounds.origin.x,
                                           self.view.bounds.origin.y,
                                           self.view.bounds.size.width,
                                           self.view.bounds.size.height - TABBAR_HEIGHT);
            
            self.tabBar.frame = CGRectMake(self.view.bounds.origin.x,
                                           self.view.bounds.size.height - TABBAR_HEIGHT,
                                           self.view.bounds.size.width,
                                           TABBAR_HEIGHT);
        }
    }
}

@end
