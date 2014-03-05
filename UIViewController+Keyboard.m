//
//  UIViewController+Keyboard.m
//  ReadCircle
//
//  Created by Hager Hu on 1/25/14.
//  Copyright (c) 2014 Hager Hu. All rights reserved.
//

#import "UIViewController+Keyboard.h"

#import "RCKeyboardHelper.h"


@implementation UIViewController (Keyboard)

- (void)addObserverForKeyboardEvent {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}


- (void)removeObserverForKeyboardEvent {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}


#pragma mark -
#pragma mark Handling UIKeyboard Event

- (void)keyboardWillShow:(NSNotification *)notification {
    
}


- (void)keyboardWillHide:(NSNotification *)notification {
    
}


#pragma mark -
#pragma mark Get UIKeyboard Information

- (CGSize)sizeWithKeyboardNotification:(NSNotification *)notification {
    return [RCKeyboardHelper sizeInView:self.view andNotification:notification];
}


- (CGFloat)durationWithKeyboardNotification:(NSNotification *)notification {
    return [RCKeyboardHelper durationWithAnimation:notification];
}

@end
