//
//  UITabBarItem+SpecImage.m
//  ShopStreet
//
//  Created by Hager Hu on 12/28/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UITabBarItem+SpecImage.h"

#import "NSString+SpecImageName.h"

@implementation UITabBarItem (SpecImage)

- (id)initWithTitle:(NSString *)title imageName:(NSString *)name {
    UIImage *defaultImage = [UIImage imageNamed:name];
    UIImage *selectedImage = [UIImage imageNamed:name.selectedImageName];
    
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        return [self initWithTitle:title image:defaultImage selectedImage:selectedImage];
    }
    
    return [self initWithTitle:title image:defaultImage tag:0];
}


- (void)setImageName:(NSString *)name {
    UIImage *defaultImage = [UIImage imageNamed:name];
    UIImage *selectedImage = [UIImage imageNamed:name.selectedImageName];
    
    self.image = defaultImage;
    
    if ([self respondsToSelector:@selector(setSelectedImage:)]) {
        self.selectedImage = selectedImage;
    }
}

@end
