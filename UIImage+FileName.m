//
//  UIImage+FileName.m
//  ReadCircle
//
//  Created by Hager Hu on 3/4/14.
//  Copyright (c) 2014 Hager Hu. All rights reserved.
//

#import "UIImage+FileName.h"

#import "UIScreen+RetinaScreen.h"


@implementation UIImage (FileName)

+ (UIImage *)imageWithFileName:(NSString *)name {
    NSString *extension = @"png";
    
    NSArray *components = [name componentsSeparatedByString:@"."];
    if ([components count] >= 2) {
        NSUInteger lastIndex = components.count - 1;
        extension = [components objectAtIndex:lastIndex];
        
        name = [name substringToIndex:(name.length-(extension.length+1))];
    }
    
    // 如果为Retina屏幕且存在对应图片，则返回Retina图片，否则查找普通图片
    if ([UIScreen isRetinaScreen]) {
        name = [name stringByAppendingString:@"@2x"];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:extension];
        if (path != nil) {
            return [UIImage imageWithContentsOfFile:path];
        }
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:extension];
    if (path) {
        return [UIImage imageWithContentsOfFile:path];
    }
    
    return nil;
}

@end
