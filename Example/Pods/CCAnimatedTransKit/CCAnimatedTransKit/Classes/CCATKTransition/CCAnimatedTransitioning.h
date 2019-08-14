//
//  CCAnimatedTransitioning.h
//  CCAnimatedTransKit
//
//  Created by mac on 2019/8/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIViewController+ATK.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCAnimatedTransitioning : NSObject<UIViewControllerAnimatedTransitioning>

/// 构造方法
- (instancetype _Nullable)initWithOperation:(UINavigationControllerOperation)operation;

/// 构造方法
- (instancetype _Nullable)initWithOperation:(UINavigationControllerOperation)operation duration:(float)duration;

@end

NS_ASSUME_NONNULL_END
