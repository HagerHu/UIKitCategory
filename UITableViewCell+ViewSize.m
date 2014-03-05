//
//  UITableViewCell+ViewSize.m
//  ReadCircle
//
//  Created by Hager Hu on 12/28/13.
//  Copyright (c) 2013 Hager Hu. All rights reserved.
//

#import "UITableViewCell+ViewSize.h"

@implementation UITableViewCell (ViewSize)

- (CGSize)viewSize {
    return self.contentView.bounds.size;
}


- (CGFloat)viewWidth {
    return self.viewSize.width;
}


- (CGFloat)viewHeight {
    return self.viewSize.height;
}

@end
