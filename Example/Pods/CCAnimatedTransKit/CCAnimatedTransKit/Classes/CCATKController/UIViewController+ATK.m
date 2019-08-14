//
//  UIViewController+ATK.m
//  CCAnimatedTransitioningKit
//
//  Created by mac on 2019/8/14.
//

#import "UIViewController+ATK.h"
#import <objc/runtime.h>

@implementation UIViewController (ATK)

- (void)setATKTarget:(UIView *)ATKTarget {
    
    objc_setAssociatedObject(self, @selector(ATKTarget), ATKTarget, OBJC_ASSOCIATION_ASSIGN);
}

- (UIView *)ATKTarget {
    
    return objc_getAssociatedObject(self, _cmd);
}


@end
