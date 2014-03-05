//
//  UIViewController+NavigationController.m
//  ReadCircle
//
//  Created by Hager Hu on 12/30/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UIViewController+NavigationController.h"

@implementation UIViewController (NavigationController)

- (UINavigationController *)rootedNavigationController {
    return [[UINavigationController alloc] initWithRootViewController:self];
}

@end
