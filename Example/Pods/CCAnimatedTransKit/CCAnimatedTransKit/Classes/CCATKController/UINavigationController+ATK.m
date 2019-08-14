//
//  UINavigationController+ATK.m
//  CCAnimatedTransKit
//
//  Created by mac on 2019/8/14.
//

#import "UINavigationController+ATK.h"
#import "CCATKBaseViewController.h"
@implementation UINavigationController (ATK)

- (void)pushATViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if ([viewController isKindOfClass:[CCATKBaseViewController class]]) {
        
        self.delegate = (id<UINavigationControllerDelegate>)viewController;
    }
    
    [self pushViewController:viewController animated:animated];
}

@end
