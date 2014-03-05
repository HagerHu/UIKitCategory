//
//  UIView+ViewSize.m
//  ReadCircle
//
//  Created by Hager Hu on 12/30/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UIView+ViewSize.h"

@implementation UIView (ViewSize)

- (CGSize)viewSize {
    return self.bounds.size;
}


- (CGFloat)viewWidth {
    return self.viewSize.width;
}

- (CGFloat)viewHeight {
    return self.viewSize.height;
}

@end
