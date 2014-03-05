//
//  UIViewController+ViewSize.m
//  ReadCircle
//
//  Created by Hager Hu on 12/28/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UIViewController+ViewSize.h"

@implementation UIViewController (ViewSize)

- (CGSize)viewSize {
    return self.view.bounds.size;
}


- (CGFloat)viewWidth {
    return self.viewSize.width;
}


- (CGFloat)viewHeight {
    return self.viewSize.height;
}

@end
