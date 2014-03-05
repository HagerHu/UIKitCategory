//
//  UIViewController+Keyboard.h
//  ReadCircle
//
//  Created by Hager Hu on 1/25/14.
//  Copyright (c) 2014 Hager Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Keyboard)

- (void)addObserverForKeyboardEvent;

- (void)removeObserverForKeyboardEvent;


- (CGSize)sizeWithKeyboardNotification:(NSNotification *)notification;

- (CGFloat)durationWithKeyboardNotification:(NSNotification *)notification;

@end
