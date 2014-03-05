//
//  UITabBarItem+SpecImage.h
//  ShopStreet
//
//  Created by Hager Hu on 12/28/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarItem (SpecImage)

- (id)initWithTitle:(NSString *)title imageName:(NSString *)name;

- (void)setImageName:(NSString *)name;

@end
