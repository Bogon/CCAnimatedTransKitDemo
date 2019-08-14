//
//  UINavigationController+ATK.h
//  CCAnimatedTransKit
//
//  Created by mac on 2019/8/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (ATK)

/// 执行转场动画
- (void)pushATViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
