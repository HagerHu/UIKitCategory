//
//  UIScreen+RetinaScreen.m
//  ReadCircle
//
//  Created by Hager Hu on 3/4/14.
//  Copyright (c) 2014 Hager Hu. All rights reserved.
//

#import "UIScreen+RetinaScreen.h"

@implementation UIScreen (RetinaScreen)

+ (BOOL)isRetinaScreen {
    return [UIScreen mainScreen].scale == 2.0;
}

@end
